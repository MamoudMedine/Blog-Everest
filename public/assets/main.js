$(function (){
    $("#email").val();
    $("#mdp").val();

    $(document).on('click', '.btn_showMdlCmt', function (){
         $(".txt_cmt").val('');
         $('.mdlCmt_article_id').val($(this).attr('article_id'));
         $("#commentModal").modal({backdrop:'static' , keyboard:false},'show');
    });

    $(document).on('click', '.btn_cmt', function (){
         var data = $("#cmt_form").serialize();
         var url = $("#cmt_form").attr('action');
         if($(".txt_cmt").val() === '' || $(".txt_cmt").val().length < 3){
             Swal.fire('Avertissement', 'Commentaire trop court, pas moins de 3 caractères svp', 'warning');
         } else{
             $.ajax({
                 url: url,
                 method:'POST',
                 data: data,
                 success: function (resp){
                      if(resp.success){
                          $("#commentModal").modal('hide');
                           Swal.fire({
                               title:'Information',
                               text: 'Commentaire effectué avec succès!!!',
                               icon: 'success',
                               showConfirmButton:false,
                               timer:3000
                           }).then(function (){
                               location.reload(true);
                           });

                      }else{
                          Swal.fire('Erreurs', 'Echec, veuiller reesayer svp', 'error');
                      }
                 }
             })
         }
    });
    $(document).on('click', '.add_new_btn_annuler', function (){
         $("#add_new_form").get(0).reset();
    });
    $(document).on('click', '.btn_add_new', function (){
        var titre = $('.titre').val();
        var image = $('.image').val();
        var description = $('.description').val();
        var ext = image.split('.').pop().toLowerCase();
        var data = new FormData($("#add_new_form")[0]);
        var url = $("#add_new_form").attr('action');

        if(titre === '' || image === '' || description === ''){
            Swal.fire('Avertissement', 'Tous les champs sont obligatoires svp', 'warning');
        } else if(ext !== 'jpg' && ext !== 'jpeg' && ext !== 'png'){
            Swal.fire('Avertissement', 'Type de fichier image non autorisé', 'warning');
        } else {
           $.ajax({
               url: url,
               method: 'POST',
               processData: false,
               contentType: false,
               data: data,
               success: function (resp){
                   if(resp.success){
                      $("#add_new_modal").modal('hide');
                       Swal.fire({
                           title:'Information',
                           text: 'Article ajouté avec succès!!!',
                           icon: 'success',
                           showConfirmButton:false,
                           timer:3000
                       }).then(function (){
                           location.reload(true);
                       });
                   } else {
                       Swal.fire('Erreurs', 'Echec, veuiller reesayer svp', 'error');
                   }
               }
           });
        }
    });
    $(document).on('click', '.btn_edit_new', function (e){
        e.preventDefault();
        $("#edit_new_form").get(0).reset();
        var new_id = $(this).attr('new_id');
        var titre = $(this).closest('tr').find('td:eq(1)').text();
        var description = $(this).closest('tr').find('td:eq(3)').text();

        $('#new_id').val(new_id);
        $('.edit_titre').val(titre);
        $('.edit_description').val(description);
        $("#edit_new_modal").modal({backdrop:'static' , keyboard:false},'show');
    });

    $(document).on('click', '.btn_edit_new_mdl', function (){
        var titre = $('.edit_titre').val();
        var image = $('.edit_image').val();
        var description = $('.edit_description').val();
        var ext = image.split('.').pop().toLowerCase();
        var data = new FormData($("#edit_new_form")[0]);
        var url = $("#edit_new_form").attr('action');

        if(titre === '' || description === ''){
            Swal.fire('Avertissement', 'le titre et la description sont obligatoires svp', 'warning');
        } else if(image !== ''){
            if(ext !== 'jpg' && ext !== 'jpeg' && ext !== 'png'){
                Swal.fire('Avertissement', 'Type de fichier image non autorisé', 'warning');
            }
            else {
                // -------------
                Swal.fire({
                    title: "Confirmation de modification",
                    text: "Voulez-vous modifier cet  article ?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'OUI',
                    cancelButtonText: 'Annuler'
                   }).then(function(result){
                    if (result.value) {
                        $.ajax({
                            url: url,
                            method: 'POST',
                            processData: false,
                            contentType: false,
                            data: data,
                            success: function (resp){
                                if(resp.success){
                                    $("#edit_new_modal").modal('hide');
                                    Swal.fire({
                                        title:'Information',
                                        text: 'Article modifié avec succès!!!',
                                        icon: 'success',
                                        showConfirmButton:false,
                                        timer:3000
                                    }).then(function (){
                                        location.reload(true);
                                    });
                                } else {
                                    Swal.fire('Erreurs', 'Echec, veuiller reesayer svp', 'error');
                                }
                            }
                        });
                    }
                });
                //  -------------
            }
        } else {
            // ------------------------
            Swal.fire({
                title: "Confirmation de modification",
                text: "Voulez-vous modifier cet  article ?",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'OUI',
                cancelButtonText: 'Annuler'
            }).then(function(result){
                if (result.value) {
                    $.ajax({
                        url: url,
                        method: 'POST',
                        processData: false,
                        contentType: false,
                        data: data,
                        success: function (resp){
                            if(resp.success){
                                $("#edit_new_modal").modal('hide');
                                Swal.fire({
                                    title:'Information',
                                    text: 'Article modifié avec succès!!!',
                                    icon: 'success',
                                    showConfirmButton:false,
                                    timer:3000
                                }).then(function (){
                                    location.reload(true);
                                });
                            } else {
                                Swal.fire('Erreurs', 'Echec, veuiller reesayer svp', 'error');
                            }
                        }
                    });
                }
            });
            //  -------------------------
        }
    });
    $(document).on('click', '.btn_del_new', function (){
        var new_id = $(this).attr('new_id');
        var url = $(this).attr('del_url');
        var token = $("input[name=_token]").val();

        // ------------------------
        Swal.fire({
            title: "Confirmation de suppression",
            text: "Voulez-vous supprimer cet  article ?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'OUI',
            cancelButtonText: 'Annuler'
        }).then(function(result){
            if (result.value) {
                $.ajax({
                    url: url,
                    method: 'POST',
                    data: {"_token": token, "id": new_id},
                    success: function (resp){
                        if(resp.success){
                            $("#edit_new_modal").modal('hide');
                            Swal.fire({
                                title:'Information',
                                text: 'Article supprimé avec succès!!!',
                                icon: 'success',
                                showConfirmButton:false,
                                timer:2000
                            }).then(function (){
                                location.reload(true);
                            });
                        } else {
                            Swal.fire('Erreurs', 'Echec, veuiller reesayer svp', 'error');
                        }
                    }
                });
            }
        });
        //  -------------------------
    });
    $(document).on('click', '.btn_login', function (e){
        e.preventDefault();
        var data = $("#login_form").serialize();
        var url = $("#login_form").attr('action');
        var email = $("#email").val();
        var mdp = $("#mdp").val();

        if(email === '' ||  mdp ===''){
            Swal.fire('Avertissement', 'Tous les champs sont obligatoires svp', 'warning');
        } else if(!validateEmail(email)){
            Swal.fire('Avertissement', 'Adresse email invalide', 'warning');
        } else{
            $.ajax({
                url: url,
                method: 'POST',
                data: data,
                success: function (resp){
                    if(resp.success){
                        Swal.fire({
                            title:'Information',
                            text: 'Connexion effectué avec succès!!!',
                            icon: 'success',
                            showConfirmButton:false,
                            timer:3000,
                            timerProgressBar: true
                        }).then(function (){
                            window.location.href = resp.admin_home;
                        });
                    } else {
                        Swal.fire('Erreurs', 'Login ou mot de passe incorrect', 'error');
                    }
                }
            });
        }
    });

    $(document).on('click', '.btn_logout', function (){
         var url = $(this).attr('url_logout');
        // ------------------------
        Swal.fire({
            title: "Confirmation",
            text: "Voulez-vous vous déconnectez ?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'OUI',
            cancelButtonText: 'Annuler'
        }).then(function(result){
            if (result.value) {
                $.ajax({
                    url: url,
                    method: 'GET',
                    success: function (resp){
                        if(resp.success){
                            Swal.fire({
                                title:'Information',
                                text: 'Vous etes deconnecté!!!',
                                icon: 'success',
                                showConfirmButton:false,
                                timer:1000
                            }).then(function (){
                                window.location.href = resp.login;
                            });
                        } else {
                            Swal.fire('Erreurs', 'Echec, veuiller reesayer svp', 'error');
                        }
                    }
                });
            }
        });
        //  -------------------------
    });

    function validateEmail($email) {
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        return emailReg.test( $email );
    }
});



