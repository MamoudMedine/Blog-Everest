<!---- Modal login--->
<div class="modal fade" id="edit_new_modal" tabindex="-1" aria-labelledby="edit_new_modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-dark">
                <h4 class="modal-title text-light text-bold" id="conn_modalLabel">Modification d'article</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="edit_new_form" action="{{route('edit_new')}}">
                    @csrf
                    <input type="hidden" name="new_id" id="new_id">
                    <div class="form-group">
                        <label for="titre">Titre</label>
                        <input type="text" class="form-control edit_titre" name="edit_titre" id="edit_titre" required>
                    </div>
                    <div class="form-group">
                        <label for="image">Ajouter une image</label><br>
                        <input type="file" class="form-control edit_image" name="edit_image" id="edit_image" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea placeholder="Description..." name="edit_description" class="form-control edit_description"
                                  id="edit_description" rows="5" cols="63" required></textarea>
                    </div>

                </form>
            </div>
            <div align="center" class="mb-3">
                <button style="font-weight: bold;" type="button" class="btn btn-secondary edit_new_btn_annuler" data-dismiss="modal">
                    <b>Annuler</b>
                </button>
                <button type="button" style="font-weight: bold;" class="btn btn-primary btn_edit_new_mdl" id="btn_edit_new_mdl">
                    <b>Modifier</b>
                </button>
            </div>
        </div>
    </div>
</div>
<!---- fin log--->
