'use strict';

module.exports = {
  /**
   * An asynchronous register function that runs before
   * your application is initialized.
   *
   * This gives you an opportunity to extend code.
   */
<<<<<<< HEAD
  register({ strapi }) {},
=======
  register(/*{ strapi }*/) {},
>>>>>>> cb95d5d596d63f80bf5515746668dab1e5d5ba6a

  /**
   * An asynchronous bootstrap function that runs before
   * your application gets started.
   *
   * This gives you an opportunity to set up your data model,
   * run jobs, or perform some special logic.
   */
<<<<<<< HEAD
  async bootstrap({ strapi }) {},

  /**
   * An asynchronous destroy function that runs before
   * your application gets shut down.
   *
   * This gives you an opportunity to gracefully stop services you run.
   */
  destroy({ strapi }) {},
=======
  bootstrap(/*{ strapi }*/) {},
>>>>>>> cb95d5d596d63f80bf5515746668dab1e5d5ba6a
};
