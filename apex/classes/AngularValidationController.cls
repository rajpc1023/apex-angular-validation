public with sharing class AngularValidationController {

    /**
     * コンストラクタ
     */
    public AngularValidationController() {
        
    }

    /**
     * 取引先責任者の登録
     */
    @RemoteAction
    public static AngularValidationResult doSaveContact(Contact contact) {
        AngularValidationResult result = new AngularValidationResult();

        try {
            insert contact;
            result.recordId = contact.Id;
        } catch(DmlException e) {
            result.errorMessages.add(e.getDmlMessage(0));
            return result;
        } catch(Exception e) {
            result.errorMessages.add(e.getMessage());
            return result;
        }

        return result;
    }
}