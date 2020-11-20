<!---- Modal login--->
<div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="commentModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-dark">
                <h4 class="modal-title text-light text-bold" id="conn_modalLabel">Commenter l'article</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="cmt_form" action="{{route('make_cmt')}}">
                    @csrf
                    <input type="hidden" name="article_id" class="mdlCmt_article_id">
                    <textarea placeholder="Ecrivez votre commentaire ICI..." name="txt_cmt"
                              class="form-control txt_cmt" id="txt_cmt" rows="3" required></textarea>
                </form>
            </div>
            <div align="center" class="mb-3">
                <button style="font-weight: bold;" type="button" class="btn btn-secondary" data-dismiss="modal">
                    <b>Annuler</b>
                </button>
                <button type="button" style="font-weight: bold;" class="btn btn-primary btn_cmt" id="btn_cmt" >
                    <b>Commenter</b>
                </button>
            </div>
        </div>
    </div>
</div>
<!---- fin log--->
