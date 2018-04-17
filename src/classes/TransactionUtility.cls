public class TransactionUtility{
    static String[] hexMap = '0123456789abcdef'.split('');
    static public string randomString(){
        Integer randomNumber = (Integer)Math.floor(65536*Math.random());
        System.debug('randomNumber'+randomNumber);
        String randomString = decToHex(randomNumber);
        System.debug('randomString'+randomString);
        randomString = randomString.subString(1);
        return randomString;
    }
    static public String decToHex(Integer x)
    {
        if(x == 0)
            return '00';
        
        String result = '';
        
        while (x != 0)
        {
            Integer modulus = Math.mod(x, 16);
            
            result = hexMap[modulus] + result;          
            
            x /= 16;
        }
        return result.length() == 1 ? '0' + result : result;
    }
    static public string generateTxId(){
        return randomString()+randomString()+'-'+randomString()+'-'+randomString()+'-'+randomString()+'-'+randomString()+randomString()+randomString();
    }
}