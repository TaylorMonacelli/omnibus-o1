Task default -Depends Test1

Task Test1 {
	 ruby bin/omnibus build oo1 --log-level debug
	 msiexec /I (gci $pwd/pkg/oo1*.msi | select fullname -last 1).FullName /qn
}
