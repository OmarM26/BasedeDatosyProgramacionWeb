const express = require('express');
const router = express.Router();

const conn = require('../database');

router.get('/contacto', (req,res) => {
    res.render('contacto.ejs');
});

module.exports = router;