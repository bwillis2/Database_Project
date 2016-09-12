create table Off_F(F_ID int(5), foreign key (F_ID) references Fortunes(F_ID));
create table Off_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%damn%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%damn%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%shit%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%shit%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%fuck%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%fuck%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%bitch%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%bitch%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%ass%" and Fortune not like "%assign%" and Fortune not like "%assassin%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%ass%" and Quote not like "%assign%" and Quote not like "%assassin%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%dick%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%dick%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%cock%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%cock%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%hump%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%hump%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%screw%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%screw%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%piss%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%piss%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%sex%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%sex%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%douche%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%douche%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%slut%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%slut%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%whore%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%whore%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "%bastard%" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "%bastard%" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% prick %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% prick %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% hell %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% hell %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% shat %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% shat %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% cunt %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% cunt %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% twat %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% twat %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% skank %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% skank %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);
insert into Off_F(F_ID) select F_ID from Fortunes s where Fortune like "% cretin %" and not exists(select F_ID from Off_F r where r.F_ID=s.F_ID);
insert into Off_Q(Q_ID) select Q_ID from Quotes s where Quote like "% cretin %" and not exists(select Q_ID from Off_Q r where r.Q_ID=s.Q_ID);

create view OffensiveFortunes as select f.Fortune from Off_F r inner join Fortunes f on r.F_ID=f.F_ID;
create view OffensiveQuotes as select s.Quote as Fortune, s.Quotee from Off_Q r inner join Quotes s on r.Q_ID=s.Q_ID;


create table Programming_F(F_ID int(5), foreign key (F_ID) references Fortunes(F_ID));
create table Programming_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% c %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% c %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% c++ %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% c++ %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "%linux%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "%linux%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "%programming%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "%programming%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% cobol %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% cobol %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% fortran %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% fortran %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% jovial %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% jovial %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% lisp %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% lisp %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% emacs %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% emacs %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% objective-c %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% objective-c %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% perl %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% perl %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% python %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% python %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% visual basic %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% visual basic %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% quickbasic %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% quickbasic %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% php %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% php %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% java %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% java %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "% javascript %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "% javascript %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "%debian%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "%debian%" or Quotee like "%debian%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "%unix%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "%unix%" or Quotee like "%unix%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "%/etc/%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "%/etc/%" or Quotee like "%/etc/%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "%microprocess%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "%microprocess%" or Quotee like "%microprocess%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "computer%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "computer%" or Quotee like "computer%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "IEEE%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "IEEE%" or Quotee like "IEEE%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "APL%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "APL%" or Quotee like "APL%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "debugging%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "debugging%" or Quotee like "debugging%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like " dos %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like " dos %" or Quotee like " dos %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "bus error%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "bus error%" or Quotee like "bus error%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like "/usr/%" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like "/usr/%" or Quotee like "/usr/%" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like " gcc %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like " gcc %" or Quotee like " gcc %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);
insert into Programming_F(F_ID) select F_ID from Fortunes s where Fortune like " linus torvalds %" and not exists(select F_ID from Programming_F r where r.F_ID=s.F_ID);
insert into Programming_Q(Q_ID) select Q_ID from Quotes s where Quote like " linus torvalds %" or Quotee like " linus torvalds %" and not exists(select Q_ID from Programming_Q r where r.Q_ID=s.Q_ID);

create view ProgrammingFortunes as select f.Fortune from Programming_F r inner join Fortunes f on r.F_ID=f.F_ID;
create view ProgrammingQuotes as select s.Quote as Fortune, s.Quotee from Programming_Q r inner join Quotes s on r.Q_ID=s.Q_ID;


create table Linux_F(F_ID int(5), foreign key (F_ID) references Fortunes(F_ID));
create table Linux_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into Linux_F(F_ID) select F_ID from Fortunes s where Fortune like "%linux%" and not exists(select F_ID from Linux_F r where r.F_ID=s.F_ID);
insert into Linux_Q(Q_ID) select Q_ID from Quotes s where Quote like "%linux%" or Quotee like "%linux%" and not exists(select Q_ID from Linux_Q r where r.Q_ID=s.Q_ID);
insert into Linux_F(F_ID) select F_ID from Fortunes s where Fortune like "%debian%" and not exists(select F_ID from Linux_F r where r.F_ID=s.F_ID);
insert into Linux_Q(Q_ID) select Q_ID from Quotes s where Quote like "%debian%" or Quotee like "%debian%" and not exists(select Q_ID from Linux_Q r where r.Q_ID=s.Q_ID);
insert into Linux_F(F_ID) select F_ID from Fortunes s where Fortune like "%unix%" and not exists(select F_ID from Linux_F r where r.F_ID=s.F_ID);
insert into Linux_Q(Q_ID) select Q_ID from Quotes s where Quote like "%unix%" or Quotee like "%unix%" and not exists(select Q_ID from Linux_Q r where r.Q_ID=s.Q_ID);
insert into Linux_F(F_ID) select F_ID from Fortunes s where Fortune like "%/etc/%" and not exists(select F_ID from Linux_F r where r.F_ID=s.F_ID);
insert into Linux_Q(Q_ID) select Q_ID from Quotes s where Quote like "%/etc/%" or Quotee like "%/etc/%" and not exists(select Q_ID from Linux_Q r where r.Q_ID=s.Q_ID);
insert into Linux_F(F_ID) select F_ID from Fortunes s where Fortune like "/usr/%" and not exists(select F_ID from Linux_F r where r.F_ID=s.F_ID);
insert into Linux_Q(Q_ID) select Q_ID from Quotes s where Quote like "/usr/%" or Quotee like "/usr/%" and not exists(select Q_ID from Linux_Q r where r.Q_ID=s.Q_ID);
insert into Linux_F(F_ID) select F_ID from Fortunes s where Fortune like "% linus torvalds%" and not exists(select F_ID from Linux_F r where r.F_ID=s.F_ID);
insert into Linux_Q(Q_ID) select Q_ID from Quotes s where Quote like "% linus torvalds%" or Quotee like "% linus torvalds%" and not exists(select Q_ID from Linux_Q r where r.Q_ID=s.Q_ID);

create view LinuxFortunes as select f.Fortune from Linux_F r inner join Fortunes f on r.F_ID=f.F_ID;
create view LinuxQuotes as select s.Quote as Fortune, s.Quotee from Linux_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table KnightBird_F(F_ID int(5), foreign key (F_ID) references Fortunes(F_ID));
insert into KnightBird_F(F_ID) select F_ID from Fortunes where Fortune like "%<Knghtbrd>%";
create view KnightBirdQuotes as select f.Fortune from KnightBird_F r inner join Fortunes f on r.F_ID=f.F_ID;

create table QOTD_F(F_ID int(5), foreign key (F_ID) references Fortunes(F_ID));
insert into QOTD_F(F_ID) select F_ID from Fortunes where Fortune like "%QOTD:%";

create table Science_F(F_ID int(5), foreign key (F_ID) references Fortunes(F_ID));
create table Science_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));

insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%mathematician%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%mathematician%" or Quotee like "%mathematician%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%engineer%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%engineer%" or Quotee like "%engineer%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "% atom %" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "% atom %" or Quotee like "% atom %" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%scientific%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%scientific%" or Quotee like "%scientific%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%statistican%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%statistican%" or Quotee like "%statistican%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%scientist%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%scientist%" or Quotee like "%scientist%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%statistics%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%statistics%" or Quotee like "%statistics%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "% n+1 %" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "% n+1 %" or Quotee like "% n+1 %" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%subatomic%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%subatomic%" or Quotee like "%subatomic%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%atomic%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%atomic%" or Quotee like "%atomic%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%chemist%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%chemist%" or Quotee like "%chemist%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%astologist%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%astologist%" or Quotee like "%astologist%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%astrology%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%astrology%" or Quotee like "%astrology%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%experiment%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%experiment%" or Quotee like "%experiment%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%factorials%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%factorials%" or Quotee like "%factorials%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%science%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%science%" or Quotee like "%science%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%einstein%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%einstein%" or Quotee like "%einstein%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%euler%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%euler%" or Quotee like "%euler%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%Heisenberg%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%Heisenberg%" or Quotee like "%Heisenberg%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "% sagan %" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "% sagan %" or Quotee like "% sagan %" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "% neutrinos%" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "% neutrinos%" or Quotee like "% neutrinos%" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);
insert into Science_F(F_ID) select F_ID from Fortunes s where Fortune like "%euclid %" and not exists(select F_ID from Science_F r where r.F_ID=s.F_ID);
insert into Science_Q(Q_ID) select Q_ID from Quotes s where Quote like "%euclid %" or Quotee like "%euclid %" and not exists(select Q_ID from Science_Q r where r.Q_ID=s.Q_ID);

-- Quote sections made first, views are distributed where they may be needed

-- Create table for Mark Twain Quotes
create table MarkTwain_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
-- This is the query to find all Q_IDs that contain Mark Twain * Finalize
insert into MarkTwain_Q(Q_ID) select Q_ID  from Quotes as s where Quotee like "%Mark Twain%" and not exists(select Q_ID from MarkTwain_Q r where s.Q_ID=r.Q_ID);
-- Make Mark Twain view from query from mappings from these two queries * Finalized
create view MarkTwainQuotes as select s.Quote as Fortune, s.Quotee from MarkTwain_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

-- Devil's Dictionary
create table DevilsDictionary_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
-- Query to find all quotee dealing wit hthe Devil's Dictionary
insert into DevilsDictionary_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Devil's Dictionary%";
create view DevilsDictionaryQuotes as select s.Quote as Fortune, s.Quotee from DevilsDictionary_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

-- Lao Tse Quotes
create table LaoTse_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into LaoTse_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Lao Tse%";
create view LaoTseQuotes as select s.Quote as Fortune, s.Quotee from LaoTse_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table DouglasCoupland_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into DouglasCoupland_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Douglas Coupland%";
create view DouglasCouplandQuotes as select s.Quote as Fortune, s.Quotee from DouglasCoupland_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table TaoOfProgramming_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into TaoOfProgramming_Q(Q_ID) select Q_ID from Quotes where Quotee like "%The Tao of Programming%";
create view TaoOfProgrammingQuotes as select s.Quote as Fortune, s.Quotee from TaoOfProgramming_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table WoodyAllen_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into WoodyAllen_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Woody Allen%";
create view WoodyAllenQuotes as select s.Quote as Fortune, s.Quotee from WoodyAllen_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table OscarWilde_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into OscarWilde_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Oscar Wilde%";
create view OscarWildeQuotes as select s.Quote as Fortune, s.Quotee from OscarWilde_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table EdwardGorey_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into EdwardGorey_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Edward Gorey%";
create view EdwardGoreyQuotes as select s.Quote as Fortune, s.Quotee from EdwardGorey_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table AmbroseBierce_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into AmbroseBierce_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Ambrose Bierce%";
create view AmbroseBierceQuotes as select s.Quote as Fortune, s.Quotee from AmbroseBierce_Q r inner join Quotes s on r.Q_ID=s.Q_ID;

create table DoublasAdams_Q(Q_ID int(5), foreign key (Q_ID) references Quotes(Q_ID));
insert into DoublasAdams_Q(Q_ID) select Q_ID from Quotes where Quotee like "%Douglas Adams%";
create view DoublasAdamsQuotes as select s.Quote as Fortune, s.Quotee from DoublasAdams_Q r inner join Quotes s on r.Q_ID=s.Q_ID;


-- QA section made for all joining tables

create table RealLifeCourtroom_QAs(QA_ID int(5), foreign key (QA_ID) references Questions_And_Answers(QA_ID));
insert into RealLifeCourtroom_QAs(QA_ID) select QA_ID from Questions_And_Answers where Subject like "%Fortune's Real-Life Courtroom Quote%";
create view RealLifeCourtroomQAs as select s.Question_And_Answer from RealLifeCourtroom_QAs r inner join Questions_And_Answers s on r.QA_ID=s.QA_ID;

create table HumorInTheCourt_QAs(QA_ID int(5), foreign key (QA_ID) references Questions_And_Answers(QA_ID));
insert into HumorInTheCourt_QAs(QA_ID) select QA_ID from Questions_And_Answers where Subject like "%Humor in the Court%";
create view HumorInTheCourtQAs as select s.Question_And_Answer from Questions_And_Answers s inner join HumorInTheCourt_QAs r on r.QA_ID=s.QA_ID;

create table Blonde_QAs(QA_ID int(5), foreign key (QA_ID) references Questions_And_Answers(QA_ID));
insert into Blonde_QAs(QA_ID) select QA_ID from Questions_And_Answers where Question_And_Answer like "% blonde %" or Question_And_Answer like "% blondes %";
create view BlondeQuestionsAndAnswers as select s.Question_And_Answer from Questions_And_Answers s inner join Blonde_QAs r on r.QA_ID=s.QA_ID;
