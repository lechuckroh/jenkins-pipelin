exports.handler = (event, context, callback) => {
  const { name, url } = event;

  if (!url) {
    callback(null, { say: `Hello ${name}` });
  } else {
    fetch(url)
      .then(function (res) {
        callback(null, res.json());
      })
      .catch(function (err) {
        callback(null, { error: err })
      });
  }
};
