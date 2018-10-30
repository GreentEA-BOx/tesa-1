/*package tesa.official.bean;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class MemberService implements UserDetailsService {

	@Autowired
	UserService userService;

	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {

		Member member = userService.getUsersByID(id);

		if (member == null) {

			throw new UsernameNotFoundException("No user found with username" + member.getName());

		}

		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();

		roles.add(new SimpleGrantedAuthority("ROLE_USER"));

		UserDetails user = new User(id, member.getPassword(), roles);

		return user;

	}

}
*/