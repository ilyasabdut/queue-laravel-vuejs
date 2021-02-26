<template>
  <div class="container p-3 my-3 border">
    <nav class="navbar navbar-light bg-light">
      <a class="navbar-brand" href="#">Ilyas Abduttawab</a>
    </nav>
    <div class="container p-3 my-3 border">
      <div class="row justify-content-center">
        <div v-for="userq in usersq" :key="userq.id">
          <div class="col-lg-4">
            <div class="card h-100" style="width: 18rem">
              <div class="card-header">Customer Service</div>
              <div class="card-body">
                <h5 class="card-title">{{ userq.name }}</h5>
                <p class="card-text">{{ userq.problem }}</p>
              </div>
              <div class="card-footer">
                <a
                  id="update-button"
                  v-bind:href="'api/update/' + userq.id"
                  class="btn btn-success"
                  >Finished</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container p-3 my-3 border">
      <div class="row">
        <table class="table table-borderless">
          <thead>
            <tr>
              <th>NAME</th>
              <th>PROBLEM</th>
              <th>ESTIMATION TIME</th>
              <th>STATUS</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="user in users" :key="user.id">
              <td>{{ user.name }}</td>
              <td>{{ user.problem }}</td>
              <td>{{ user.solve_time }} Minutes</td>
              <td>{{ user.status }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
const users = axios.get("/api/users");
const usersq = axios.get("/api/usersq");

export default {
  data() {
    return {
      users: {},
      usersq: {},
    };
  },

  created() {
    axios
      .all([users, usersq])
      .then(
        axios.spread((...responses) => {
          this.users = responses[0].data;
          this.usersq = responses[1].data;
        })
      )
      .catch((e) => {
        this.errors.push(e);
      });
  },

  methods: {
    submit() {
      axios
        .post(`/api/updates/` + this.usersq.id, {
          status: this.status,
          _method: "patch",
        })
        .then(
          function (response) {
            console.log(response);
          }.bind(this)
        );
    },
    reset() {
      axios
        .post(`/api/reset`, {
          status: this.status,
          _method: "patch",
        })
        .then(
          function (response) {
            console.log(response);
          }.bind(this)
        );
    },
  },
};
</script>