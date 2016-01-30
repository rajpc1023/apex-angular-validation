public with sharing class AngularValidationResult {

    public Id recordId {get; set;}
    public List<String> errorMessages {get; set;}

    /**
     * コンストラクタ
     */
    public AngularValidationResult() {
        this.recordId = null;
        this.errorMessages = new List<String>();
    }
}