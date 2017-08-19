<div class="form-group">
    <label for="${property}" class="col-sm-2 control-label">
        ${property}<g:if test="${required}">*</g:if>
    </label>
    <div class="col-sm-10">
        <input class="form-control" id="${property}" name="${property}" value="${value}">
    </div>
</div>