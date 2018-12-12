public class AccountList {
    public AccountList(){
        for(Account a:[select id,name,(select id,name from contacts) from Account]){
            system.debug('Accounts'+a);
            system.debug('Conatcts'+a.contacts);
        }
            System.debug(Limits.getHeapSize());
            List<Account> accountList;
            System.debug(Limits.getHeapSize());
            accountList = new List<Account>();
            System.debug(Limits.getHeapSize());
            for(Integer i=0; i<=10; i++){
                accountList.add( new Account(Name='Hi'));
                System.debug(Limits.getHeapSize());
            }
            System.debug(Limits.getHeapSize());
            accountList = null;
            accountList = new List<Account>();
            
            System.debug(Limits.getLimitHeapSize());
            System.debug(Limits.getHeapSize());
            
        
    }
}