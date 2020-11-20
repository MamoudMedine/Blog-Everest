<!---- Modal login--->
<div class="modal fade" id="add_new_modal" tabindex="-1" aria-labelledby="add_new_modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-dark">
                <h4 class="modal-title text-light text-bold" id="conn_modalLabel">Nouvel article</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="add_new_form" action="{{route('add_new')}}">
                    @csrf
                    <div class="form-group">
                        <label for="titre">Titre</label>
                        <input type="text" class="form-control titre" name="titre" id="titre" required>
                    </div>
                    <div class="form-group">
                        <label for="image">Ajouter une image</label><br>
                        <input type="file" class="form-control image" name="image" id="image" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea placeholder="Description..." name="description" class="form-control description"
                                  id="description" rows="5" cols="63" required></textarea>
                    </div>

                </form>
            </div>
            <div align="center" class="mb-3">
                <button style="font-weight: bold;" type="button" class="btn btn-secondary add_new_btn_annuler" data-dismiss="modal">
                    <b>Annuler</b>
                </button>
                <button type="button" style="font-weight: bold;" class="btn btn-primary btn_add_new" id="btn_add_new" >
                    <b>Ajouter</b>
                </button>
            </div>
        </div>
    </div>
</div>
<!---- fin log--->
