import com.dh.domain.Account;
import com.dh.persistence.AccountMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;

/**
 * 测试mybatis连接数据库
 * Created by kai on 2016/06/01.
 */
public class test {
    /**
     * 构建sqlSession工厂
     * @return
     */
    private static SqlSessionFactory getSessionFactory() {
        SqlSessionFactory sessionFactory = null;
        String resource = "conf.xml";
        try {
            sessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader(resource));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sessionFactory;
    }

    public static void main(String[] args) {
        SqlSession sqlSession = getSessionFactory().openSession();
        AccountMapper accountMapper = sqlSession.getMapper(AccountMapper.class);   //找到对应mapper

        Account account = accountMapper.findAccount("bob");
        System.out.print(account.getUsername());

        Account account1 = new Account();
        account1.setUsername("d");
        account1.setPassword("123");
        account1.setEmail("123@qq.com");
        accountMapper.insertAccount(account1);

        sqlSession.commit();
    }

}
