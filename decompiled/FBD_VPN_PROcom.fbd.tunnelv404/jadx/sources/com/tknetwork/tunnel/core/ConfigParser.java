package com.tknetwork.tunnel.core;

import android.text.TextUtils;
import androidx.core.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.BufferedReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Vector;

/* loaded from: classes3.dex */
public class ConfigParser {
    public static final String CONVERTED_PROFILE = new ObfuscatedString(new long[]{3407676767961927620L, 6029183462278747088L, 8800064602453802425L, -6551536405191937081L}).toString();
    private String auth_user_pass_file;
    private final HashMap<String, Vector<Vector<String>>> options = new HashMap<>();
    private final HashMap<String, Vector<String>> meta = new HashMap<>();
    final String[] unsupportedOptions = {new ObfuscatedString(new long[]{1592229857858325132L, -3803304095301819246L}).toString(), new ObfuscatedString(new long[]{3615946391231056298L, 4874399463225426469L, -2155226458364254211L}).toString()};
    final String[] ignoreOptions = {new ObfuscatedString(new long[]{-5950158533888421563L, -475949156315586310L, -5170388626440964824L}).toString(), new ObfuscatedString(new long[]{-2772255606157757987L, -2875743699999713038L}).toString(), new ObfuscatedString(new long[]{-3133364939639367164L, 5715489418427811446L, -8887616628587037251L}).toString(), new ObfuscatedString(new long[]{480208511137230116L, 9199155284017413215L}).toString(), new ObfuscatedString(new long[]{7993088538086568240L, -9086216969602929278L}).toString(), new ObfuscatedString(new long[]{-7118482197624359851L, -6849393070361414538L}).toString(), new ObfuscatedString(new long[]{-7983009169825105213L, 6186479908353582746L}).toString(), new ObfuscatedString(new long[]{-7727104498429683460L, 9107184577536963999L}).toString(), new ObfuscatedString(new long[]{190085035309195239L, -3379270232540957750L, 9202405711261182219L}).toString(), new ObfuscatedString(new long[]{6804382387034109866L, -5206313173704351371L, -3343191464135959184L, -6968512239083234921L}).toString(), new ObfuscatedString(new long[]{1794221488829758649L, 5995403975529598696L, -23686269719482740L, 3908033001298811640L}).toString(), new ObfuscatedString(new long[]{-1350530889042979987L, 4791210144922552301L, -2892054475323161340L}).toString(), new ObfuscatedString(new long[]{5114513813295674724L, 4226397993696008643L, -1851074617064541351L}).toString(), new ObfuscatedString(new long[]{8981898813106427267L, -4191414976186780377L}).toString(), new ObfuscatedString(new long[]{6970365107987758828L, -2522371073957856667L}).toString(), new ObfuscatedString(new long[]{5885025519588875447L, -5415626042440720424L, 341628309008732383L, 7290212785043390000L}).toString(), new ObfuscatedString(new long[]{945446657199350116L, 4590036534884916566L}).toString(), new ObfuscatedString(new long[]{3519186144847932363L, -5434559273018139428L, 1843550354432947460L}).toString(), new ObfuscatedString(new long[]{-7839674275521215179L, 2503644271426465797L, -2594952863229651331L}).toString(), new ObfuscatedString(new long[]{3456404472213719094L, -7638173129700265889L, 3766052997985433375L, 5493453014210396051L}).toString(), new ObfuscatedString(new long[]{6109669421566648392L, 4532095778582646497L, -4085375920896521135L, -6611716647074523903L}).toString(), new ObfuscatedString(new long[]{-8617298335954840450L, -3135608300624622394L, 2599864784519692667L, 6489484019196372079L, 7980803739069230154L}).toString(), new ObfuscatedString(new long[]{-3046338690642280696L, -619388564497875317L, 6555000422947813040L, 10873563829665923L}).toString(), new ObfuscatedString(new long[]{-4580093095974413412L, -6095107542080461566L, -1196672648975015368L, 365029275159372700L}).toString(), new ObfuscatedString(new long[]{-8228837400103982566L, 3671415528319289927L, -6441861608117870314L, -8311878859137604365L, 8664359573796884733L}).toString(), new ObfuscatedString(new long[]{-7538821704264798446L, -3529040288573731444L, 1721581719256243335L, 469698111201961250L}).toString(), new ObfuscatedString(new long[]{-3853852752597703642L, -5020432848781044127L, -257667075587004579L, 648856873368075639L}).toString(), new ObfuscatedString(new long[]{-916934533380192939L, 2344880891214992976L, -2323079594985800977L, -1715026567681106085L}).toString(), new ObfuscatedString(new long[]{2221165189566269741L, -3339215515014905566L, -8068339311267756855L, -9008357678402261882L}).toString(), new ObfuscatedString(new long[]{157186322978042715L, -1602479189681455776L, -4334005658653399418L, -9169444762628414248L}).toString(), new ObfuscatedString(new long[]{-7689591287838683437L, 3767295165221262241L, 805330313547120936L}).toString(), new ObfuscatedString(new long[]{2654529095671554732L, -5885735544360227453L}).toString(), new ObfuscatedString(new long[]{-2276440558866264574L, -4854490401290425028L, 5331092543964657867L, 8712851256450059148L}).toString(), new ObfuscatedString(new long[]{1165156702353531343L, -1174030484783629099L, 5270713923550180575L}).toString(), new ObfuscatedString(new long[]{-6708749017643154130L, -3550657732839559216L}).toString(), new ObfuscatedString(new long[]{7200769145974285140L, 5759966838828909081L, -1651334909311339987L}).toString(), new ObfuscatedString(new long[]{-6487873351835067045L, -267021015100031435L, -1911184280982682098L}).toString(), new ObfuscatedString(new long[]{-7170802543725544650L, 1608822592530721014L, -2606785145384074779L}).toString(), new ObfuscatedString(new long[]{-2606855377653374617L, -5845203546797756964L, -8589371660515970455L}).toString(), new ObfuscatedString(new long[]{5738893870238867736L, -7851534021515027091L, -199354156927744997L}).toString(), new ObfuscatedString(new long[]{7822774528014724970L, -5017272044958188625L}).toString(), new ObfuscatedString(new long[]{-2673741782253255145L, -541956417258001140L, 5385973304127701865L}).toString(), new ObfuscatedString(new long[]{-7616432792797732291L, -5824031694380461877L, -4121902027714603277L}).toString(), new ObfuscatedString(new long[]{-5510531471027882270L, -7471412714769467498L, 9194922870595553233L, -7312364721228538490L}).toString(), new ObfuscatedString(new long[]{-7375943254277019812L, -6195845343633857462L}).toString(), new ObfuscatedString(new long[]{-866598228632593227L, 9081148522239520440L}).toString(), new ObfuscatedString(new long[]{-6284695347948518812L, 3128539219526765265L}).toString(), new ObfuscatedString(new long[]{7029105812219540607L, 5307490876364890431L}).toString(), new ObfuscatedString(new long[]{-4943479628515489552L, -2696734321292623480L}).toString()};
    final String[][] ignoreOptionsWithArg = {new String[]{new ObfuscatedString(new long[]{-2416562671252127841L, 2850609572860474969L}).toString(), new ObfuscatedString(new long[]{4496724741231463238L, -1780312303291144394L, -1421548206833750780L}).toString()}, new String[]{new ObfuscatedString(new long[]{-2485513003439009580L, -6490343072218636404L}).toString(), new ObfuscatedString(new long[]{-2560439154319906308L, 1659634395287673313L, -8019647640677978342L, 1535052528770169073L}).toString()}, new String[]{new ObfuscatedString(new long[]{5664295034421463859L, 5553608258049218580L}).toString(), new ObfuscatedString(new long[]{6289203026059940624L, 6057585446992719276L}).toString()}, new String[]{new ObfuscatedString(new long[]{-8547171728540710162L, 1894057090404065681L}).toString(), new ObfuscatedString(new long[]{-9217452841162747474L, 1920442249517746109L, -3165189449856102853L}).toString()}};
    final String[] connectionOptions = {new ObfuscatedString(new long[]{-9220282799733498754L, 7171616331063905681L}).toString(), new ObfuscatedString(new long[]{2528973645212233252L, 4282638407519328603L}).toString(), new ObfuscatedString(new long[]{-966243176443344811L, 6825969163040684402L}).toString(), new ObfuscatedString(new long[]{2452720913222316455L, 1981141821041055964L}).toString(), new ObfuscatedString(new long[]{-3694867591533210290L, 2506276064740350034L, 1591285972131025299L}).toString(), new ObfuscatedString(new long[]{-8970733328636449745L, 7942632900910145298L, 6898891240053221720L}).toString(), new ObfuscatedString(new long[]{-1037685378869220976L, -3568572731187885790L, -7212406370463134183L, -5077627955346999077L}).toString(), new ObfuscatedString(new long[]{5527693481516009110L, -1890134289593159484L}).toString(), new ObfuscatedString(new long[]{-5141764025719874317L, -1024579465715068929L}).toString(), new ObfuscatedString(new long[]{6008284765386391899L, 2150706649200213681L, -6874731144658834366L}).toString(), new ObfuscatedString(new long[]{-5483365333092418397L, -1006426926566628762L}).toString(), new ObfuscatedString(new long[]{2761740105373274833L, -2554425779882313079L}).toString(), new ObfuscatedString(new long[]{3376700985057678192L, -574479968468802576L, 8168027869032722887L}).toString(), new ObfuscatedString(new long[]{-8812233952882410645L, -44133503640891558L, 1677848204982268405L}).toString(), new ObfuscatedString(new long[]{-6993005889657659469L, -5464275003877956871L}).toString(), new ObfuscatedString(new long[]{-5690895044909277393L, -8152366292937089675L}).toString(), new ObfuscatedString(new long[]{4062181196415236987L, 249537640929338601L}).toString(), new ObfuscatedString(new long[]{5146613689849825861L, 4822717600312852755L, 3417589927917575760L}).toString(), new ObfuscatedString(new long[]{1211726009282500027L, 5376823156825816329L, -1957767901586049146L}).toString(), new ObfuscatedString(new long[]{-8575289691125029010L, 5526584483120472932L, -9140404652474396471L, -9044004339527169764L}).toString(), new ObfuscatedString(new long[]{497795777481085154L, 3645978766361406563L, 1345991017382519823L, -5138400691464224781L}).toString(), new ObfuscatedString(new long[]{-8197039238154872781L, -6001324920329746549L, -4625979511349604830L}).toString(), new ObfuscatedString(new long[]{8434259142408859822L, -7460486589301772849L, -5001583077153512351L, 7047367440813044205L}).toString(), new ObfuscatedString(new long[]{-7740643409149013010L, -3863262804831513950L, -3561872935066656859L, -6349276831169523200L}).toString(), new ObfuscatedString(new long[]{-1908410630806464622L, 34352915470370698L}).toString()};

    /* loaded from: classes3.dex */
    public static class ConfigParseError extends Exception {
        private static final long serialVersionUID = -60;

        public ConfigParseError(String str) {
            super(str);
        }
    }

    /* loaded from: classes3.dex */
    public enum linestate {
        initial,
        readin_single_quote,
        reading_quoted,
        reading_unquoted,
        done
    }

    private void checkIgnoreAndInvalidOptions(VpnProfile vpnProfile) {
        for (String str : this.unsupportedOptions) {
            if (this.options.containsKey(str)) {
                throw new ConfigParseError(String.format(new ObfuscatedString(new long[]{4638847641219564004L, 984079332404217108L, -3578204549971970231L, 1086253834573942354L, -2042549770896043721L, 3188787822030406609L, -1801989717508426159L, 5266487723675079195L, 5937279480708415022L}).toString(), str));
            }
        }
        for (String str2 : this.ignoreOptions) {
            this.options.remove(str2);
        }
        if (this.options.size() > 0) {
            vpnProfile.mCustomConfigOptions = new ObfuscatedString(new long[]{9220868352391407703L, 3809806910053823147L, -6965354296207149888L, 5678839267924551248L, -6868782342282284665L, 2933920629718161023L, 8575067088490497215L, 8816541733540895267L, -77608730597454236L, 5961593393567737614L}).toString() + vpnProfile.mCustomConfigOptions;
            Iterator<Vector<Vector<String>>> it = this.options.values().iterator();
            while (it.hasNext()) {
                vpnProfile.mCustomConfigOptions += getOptionStrings(it.next());
            }
            vpnProfile.mUseCustomConfig = true;
        }
    }

    private void checkRedirectParameters(VpnProfile vpnProfile, Vector<Vector<String>> vector) {
        Iterator<Vector<String>> it = vector.iterator();
        while (it.hasNext()) {
            Vector<String> next = it.next();
            for (int i = 1; i < next.size(); i++) {
                if (next.get(i).equals(new ObfuscatedString(new long[]{-3240913467786055354L, -4933575752501925876L, -5876970333712727622L}).toString())) {
                    vpnProfile.mAllowLocalLAN = false;
                } else if (next.get(i).equals(new ObfuscatedString(new long[]{-1713935775671272205L, -1852817382942674379L, 7695640686541418626L}).toString())) {
                    vpnProfile.mAllowLocalLAN = true;
                }
            }
        }
    }

    private void checkinlinefile(Vector<String> vector, BufferedReader bufferedReader) {
        String trim = vector.get(0).trim();
        if (trim.startsWith(new ObfuscatedString(new long[]{5669580159816953742L, -5048072397307389935L}).toString()) && trim.endsWith(new ObfuscatedString(new long[]{8251139013082648483L, -4544015922231889119L}).toString())) {
            String substring = trim.substring(1, trim.length() - 1);
            String obfuscatedString = new ObfuscatedString(new long[]{-1479758163146019251L, 4664073108370388383L, 4586103805842191314L}).toString();
            String format = String.format(new ObfuscatedString(new long[]{6285251907231236236L, -2591534872124345652L}).toString(), substring);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (readLine.trim().equals(format)) {
                        if (obfuscatedString.endsWith(new ObfuscatedString(new long[]{975912668835446820L, 1333501832489801189L}).toString())) {
                            obfuscatedString = obfuscatedString.substring(0, obfuscatedString.length() - 1);
                        }
                        vector.clear();
                        vector.add(substring);
                        vector.add(obfuscatedString);
                        return;
                    }
                    obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4236256753724059958L, 1924900243314852722L}), AbstractC0749x8313616e.m3341xc20437a5(AbstractC0362x4440ab85.m2931x34271fae(obfuscatedString, readLine)));
                } else {
                    throw new ConfigParseError(String.format(new ObfuscatedString(new long[]{-8315202219536621023L, -4857645508767614802L, -8976022584048897148L, 9162898224297167917L, 1711263908408311148L, -8039912128289751707L}).toString(), substring, substring));
                }
            }
        }
    }

    private void fixup(VpnProfile vpnProfile) {
        if (vpnProfile.mRemoteCN.equals(vpnProfile.mServerName)) {
            vpnProfile.mRemoteCN = new ObfuscatedString(new long[]{7426157192272916560L}).toString();
        }
    }

    private Vector<Vector<String>> getAllOption(String str, int i, int i2) {
        Vector<Vector<String>> vector = this.options.get(str);
        if (vector == null) {
            return null;
        }
        Iterator<Vector<String>> it = vector.iterator();
        while (it.hasNext()) {
            Vector<String> next = it.next();
            if (next.size() < i + 1 || next.size() > i2 + 1) {
                throw new ConfigParseError(String.format(Locale.getDefault(), new ObfuscatedString(new long[]{-3537970404954630635L, -5306629660398394514L, -844002970420821886L, -9197924873255409668L, -8609920220565435311L, 8697109793242116681L, -6151706883972636170L, -5117159579237473125L}).toString(), str, Integer.valueOf(next.size() - 1), Integer.valueOf(i), Integer.valueOf(i2)));
            }
        }
        this.options.remove(str);
        return vector;
    }

    private Vector<String> getOption(String str, int i, int i2) {
        Vector<Vector<String>> allOption = getAllOption(str, i, i2);
        if (allOption == null) {
            return null;
        }
        return allOption.lastElement();
    }

    private String getOptionStrings(Vector<Vector<String>> vector) {
        String obfuscatedString = new ObfuscatedString(new long[]{1199336868102566813L}).toString();
        Iterator<Vector<String>> it = vector.iterator();
        while (it.hasNext()) {
            Vector<String> next = it.next();
            if (!ignoreThisOption(next)) {
                if (next.size() == 2 && (new ObfuscatedString(new long[]{-2097481235338108484L, 6375808216160525935L, -7075246515757938616L}).toString().equals(next.get(0)) || new ObfuscatedString(new long[]{5584237021704765842L, 8529516733141693994L, 4354714804072781539L, 7743592090904585353L}).toString().equals(next.get(0)))) {
                    StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                    m3341xc20437a5.append(VpnProfile.insertFileData(next.get(0), next.get(1)));
                    obfuscatedString = m3341xc20437a5.toString();
                } else {
                    Iterator<String> it2 = next.iterator();
                    while (it2.hasNext()) {
                        String next2 = it2.next();
                        StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                        m3341xc20437a52.append(VpnProfile.openVpnEscape(next2));
                        obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-9130712521389469726L, -7480603633454504646L}), m3341xc20437a52);
                    }
                    obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3862166168744297603L, -1431087315782272225L}), AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString));
                }
            }
        }
        return obfuscatedString;
    }

    private boolean isUdpProto(String str) {
        if (!str.equals(new ObfuscatedString(new long[]{-4598881727372885440L, -191779747725020970L}).toString()) && !str.equals(new ObfuscatedString(new long[]{4751023139547525323L, -5668116427698703227L}).toString())) {
            if (!str.equals(new ObfuscatedString(new long[]{-5518352092848893869L, 6695267110589233324L, 1602129381084867564L}).toString()) && !str.equals(new ObfuscatedString(new long[]{4741142685655258779L, -7962052911122189356L}).toString()) && !str.equals(new ObfuscatedString(new long[]{-7102547542919963524L, -7720140196859112926L}).toString()) && !str.endsWith(new ObfuscatedString(new long[]{3957561176615526667L, 2549928586424247904L, -4789770099718265022L}).toString())) {
                throw new ConfigParseError(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{822772339222002730L, -5065633687609651241L, -1008444035181442929L, -7225795908716418916L, 4922187873630884528L}), new StringBuilder(), str));
            }
            return false;
        }
        return true;
    }

    private Pair<Connection, Connection[]> parseConnection(String str, Connection connection) {
        ConfigParser configParser = new ConfigParser();
        configParser.parseConfig(new StringReader(str.substring(new ObfuscatedString(new long[]{3569218734585330425L, 3120620073549557702L, 1161445973054369788L}).toString().length())));
        return configParser.parseConnectionOptions(connection);
    }

    private Pair<Connection, Connection[]> parseConnectionOptions(Connection connection) {
        Connection m1555clone;
        int i = 0;
        if (connection != null) {
            try {
                m1555clone = connection.m1555clone();
            } catch (CloneNotSupportedException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            m1555clone = new Connection();
        }
        Vector<String> option = getOption(new ObfuscatedString(new long[]{-3987544156738288446L, -8789333540379748825L}).toString(), 1, 1);
        if (option != null) {
            m1555clone.mServerPort = option.get(1);
        }
        Vector<String> option2 = getOption(new ObfuscatedString(new long[]{1027528146167911305L, -429958483123911339L}).toString(), 1, 1);
        if (option2 != null) {
            m1555clone.mServerPort = option2.get(1);
        }
        Vector<String> option3 = getOption(new ObfuscatedString(new long[]{-3605309771974971315L, 3194648762980947839L}).toString(), 1, 1);
        if (option3 != null) {
            m1555clone.mUseUdp = isUdpProto(option3.get(1));
        }
        Vector<String> option4 = getOption(new ObfuscatedString(new long[]{-3868209852279416751L, -1224401800284947301L, -5846390799585453083L}).toString(), 1, 1);
        if (option4 != null) {
            try {
                m1555clone.mConnectTimeout = Integer.parseInt(option4.get(1));
            } catch (NumberFormatException e2) {
                throw new ConfigParseError(String.format(new ObfuscatedString(new long[]{-2890817958321318022L, 7477079619010697558L, 8193040980015678780L, -7706745595717228794L, 7875582680166868233L, -5472405175189963393L, 1885449065430153079L, 3019711534885692634L, -8763828132648317555L}).toString(), option4.get(1), e2.getLocalizedMessage()));
            }
        }
        Vector<Vector<String>> allOption = getAllOption(new ObfuscatedString(new long[]{-6311306590941226169L, -2158132047031699343L}).toString(), 1, 3);
        if (connection != null) {
            Iterator<Vector<Vector<String>>> it = this.options.values().iterator();
            while (it.hasNext()) {
                m1555clone.mCustomConfiguration += getOptionStrings(it.next());
            }
            if (!TextUtils.isEmpty(m1555clone.mCustomConfiguration)) {
                m1555clone.mUseCustomConfig = true;
            }
        }
        if (allOption == null) {
            allOption = new Vector<>();
        }
        Connection[] connectionArr = new Connection[allOption.size()];
        Iterator<Vector<String>> it2 = allOption.iterator();
        while (it2.hasNext()) {
            Vector<String> next = it2.next();
            try {
                connectionArr[i] = m1555clone.m1555clone();
            } catch (CloneNotSupportedException e3) {
                e3.printStackTrace();
            }
            int size = next.size();
            if (size != 2) {
                if (size != 3) {
                    if (size == 4) {
                        connectionArr[i].mUseUdp = isUdpProto(next.get(3));
                    } else {
                        i++;
                    }
                }
                connectionArr[i].mServerPort = next.get(2);
            }
            connectionArr[i].mServerName = next.get(1);
            i++;
        }
        return Pair.create(m1555clone, connectionArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Vector<String> parseline(String str) {
        char c;
        Vector<String> vector = new Vector<>();
        if (str.length() == 0) {
            return vector;
        }
        linestate linestateVar = linestate.initial;
        String obfuscatedString = new ObfuscatedString(new long[]{7781489558164671156L}).toString();
        int i = 0;
        boolean z = false;
        char c2 = 0;
        while (true) {
            if (i < str.length()) {
                c = str.charAt(i);
            } else {
                c = 0;
            }
            if (!z && c == '\\' && linestateVar != linestate.readin_single_quote) {
                z = true;
            } else {
                linestate linestateVar2 = linestate.initial;
                if (linestateVar == linestateVar2) {
                    if (!space(c)) {
                        if (c == ';' || c == '#') {
                            break;
                        }
                        if (!z && c == '\"') {
                            linestateVar = linestate.reading_quoted;
                        } else if (!z && c == '\'') {
                            linestateVar = linestate.readin_single_quote;
                        } else {
                            linestateVar = linestate.reading_unquoted;
                            c2 = c;
                        }
                    }
                    if (linestateVar != linestate.done) {
                        vector.add(obfuscatedString);
                        obfuscatedString = new ObfuscatedString(new long[]{2580848745036295004L}).toString();
                        c2 = 0;
                    } else {
                        linestateVar2 = linestateVar;
                    }
                    if (!z && c2 != 0 && c2 != '\\' && c2 != '\"' && !space(c2)) {
                        throw new ConfigParseError(new ObfuscatedString(new long[]{6935082905060006552L, -4617896406568499453L, 3762627788910314603L, 2546241940752012528L, 2147562946659770595L, -674254063687598492L, -1816075733418396591L}).toString());
                    }
                    linestateVar = linestateVar2;
                    z = false;
                } else if (linestateVar == linestate.reading_unquoted) {
                    if (!z && space(c)) {
                        linestateVar = linestate.done;
                        if (linestateVar != linestate.done) {
                        }
                        if (!z) {
                        }
                        linestateVar = linestateVar2;
                        z = false;
                    }
                    c2 = c;
                    if (linestateVar != linestate.done) {
                    }
                    if (!z) {
                    }
                    linestateVar = linestateVar2;
                    z = false;
                } else if (linestateVar == linestate.reading_quoted) {
                    if (!z && c == '\"') {
                        linestateVar = linestate.done;
                        if (linestateVar != linestate.done) {
                        }
                        if (!z) {
                        }
                        linestateVar = linestateVar2;
                        z = false;
                    }
                    c2 = c;
                    if (linestateVar != linestate.done) {
                    }
                    if (!z) {
                    }
                    linestateVar = linestateVar2;
                    z = false;
                } else {
                    if (linestateVar == linestate.readin_single_quote) {
                        if (c == '\'') {
                            linestateVar = linestate.done;
                        }
                        c2 = c;
                    }
                    if (linestateVar != linestate.done) {
                    }
                    if (!z) {
                    }
                    linestateVar = linestateVar2;
                    z = false;
                }
            }
            if (c2 != 0) {
                obfuscatedString = obfuscatedString + c2;
            }
            int i2 = i + 1;
            if (i >= str.length()) {
                break;
            }
            i = i2;
        }
        return vector;
    }

    private Vector<String> parsemeta(String str) {
        String[] split = str.split(new ObfuscatedString(new long[]{6382420264142242310L, 3404470230752587980L, -3340931895679894446L, 5892428154816003558L}).toString(), 2)[1].split(new ObfuscatedString(new long[]{1471473696788657829L, -6968147490617144265L}).toString(), 2);
        Vector<String> vector = new Vector<>();
        Collections.addAll(vector, split);
        return vector;
    }

    private boolean space(char c) {
        if (!Character.isWhitespace(c) && c != 0) {
            return false;
        }
        return true;
    }

    public static void useEmbbedUserAuth(VpnProfile vpnProfile, String str) {
        String[] split = VpnProfile.getEmbeddedContent(str).split(new ObfuscatedString(new long[]{2709505357472343599L, 4624168055436202025L}).toString());
        if (split.length >= 2) {
            vpnProfile.mUsername = split[0];
            vpnProfile.mPassword = split[1];
        }
    }

    public VpnProfile convertProfile() {
        boolean z;
        boolean z2;
        VpnProfile vpnProfile = new VpnProfile(new ObfuscatedString(new long[]{-7200201093849543782L, 3506233513458641036L, 2498000669900129359L, 3904890948933738187L}).toString());
        vpnProfile.clearDefaults();
        if (this.options.containsKey(new ObfuscatedString(new long[]{-766808221053829173L, 4822270148386884096L}).toString()) || this.options.containsKey(new ObfuscatedString(new long[]{6271673257486653237L, -5072407493443177175L}).toString())) {
            vpnProfile.mUsePull = true;
            this.options.remove(new ObfuscatedString(new long[]{5352265967179311710L, 6614389619462581397L}).toString());
            this.options.remove(new ObfuscatedString(new long[]{-5723386520782948259L, -7284810164552180688L}).toString());
        }
        Vector<String> option = getOption(new ObfuscatedString(new long[]{-2025762040410186216L, 4210010271945312400L}).toString(), 1, 2);
        if (option != null) {
            vpnProfile.mAuthenticationType = 4;
            vpnProfile.mUseTLSAuth = true;
            vpnProfile.mTLSAuthFilename = option.get(1);
            if (option.size() == 3) {
                vpnProfile.mTLSAuthDirection = option.get(2);
            }
            z = false;
        } else {
            z = true;
        }
        Vector<Vector<String>> allOption = getAllOption(new ObfuscatedString(new long[]{8098998703401385779L, 2086782288793487464L}).toString(), 1, 4);
        if (allOption != null) {
            String obfuscatedString = new ObfuscatedString(new long[]{-4865629807148101701L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{7990717051221257318L}).toString();
            Iterator<Vector<String>> it = allOption.iterator();
            while (it.hasNext()) {
                Vector<String> next = it.next();
                String obfuscatedString3 = new ObfuscatedString(new long[]{9026610748294951551L, -2299542853268869693L, 6020039565010848009L}).toString();
                String obfuscatedString4 = new ObfuscatedString(new long[]{-8829923260176412984L, -486497581603205532L, 1180223012173230378L}).toString();
                if (next.size() >= 3) {
                    obfuscatedString3 = next.get(2);
                }
                if (next.size() >= 4) {
                    obfuscatedString4 = next.get(3);
                }
                try {
                    CIDRIP cidrip = new CIDRIP(next.get(1), obfuscatedString3);
                    if (obfuscatedString4.equals(new ObfuscatedString(new long[]{4518427364057310140L, 6284364727717740346L, -1169826598392399649L}).toString())) {
                        obfuscatedString2 = obfuscatedString2 + cidrip + new ObfuscatedString(new long[]{-5659381986007060924L, 1921744224466629707L}).toString();
                    } else {
                        obfuscatedString = obfuscatedString + cidrip + new ObfuscatedString(new long[]{-7324900320576827532L, -7173084823280546146L}).toString();
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new ConfigParseError(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-464313975872834261L, 1234005440074258894L, 7039810169882331210L, 577514691631720928L, -8293760977915089858L, -2275866064803270675L}), new StringBuilder(), obfuscatedString3));
                } catch (NumberFormatException unused2) {
                    throw new ConfigParseError(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2781958489876786411L, 2164663156194167848L, -4694273076799647823L, 3691662902720923003L, -7402486961066824452L, -8303005258450101601L}), new StringBuilder(), obfuscatedString3));
                }
            }
            vpnProfile.mCustomRoutes = obfuscatedString;
            vpnProfile.mExcludedRoutes = obfuscatedString2;
        }
        Vector<Vector<String>> allOption2 = getAllOption(new ObfuscatedString(new long[]{-4547251269450958068L, 8370497948014056372L, -6346967779091604622L}).toString(), 1, 4);
        if (allOption2 != null) {
            String obfuscatedString5 = new ObfuscatedString(new long[]{1205359972869742138L}).toString();
            Iterator<Vector<String>> it2 = allOption2.iterator();
            while (it2.hasNext()) {
                Vector<String> next2 = it2.next();
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString5);
                m3341xc20437a5.append(next2.get(1));
                obfuscatedString5 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4547909175305700329L, -3995542599499192594L}), m3341xc20437a5);
            }
            vpnProfile.mCustomRoutesv6 = obfuscatedString5;
        }
        if (getOption(new ObfuscatedString(new long[]{2083171642363244953L, -438768128452021293L, 7444330224394804264L}).toString(), 1, 1) != null) {
            vpnProfile.mRoutenopull = true;
        }
        Vector<Vector<String>> allOption3 = getAllOption(new ObfuscatedString(new long[]{4597678689638737213L, 6780543872503468164L}).toString(), 1, 2);
        if (allOption3 != null) {
            Iterator<Vector<String>> it3 = allOption3.iterator();
            while (it3.hasNext()) {
                Vector<String> next3 = it3.next();
                if (next3 != null) {
                    if (!next3.get(1).equals(new ObfuscatedString(new long[]{7330545148672638437L, -8700076333502738866L}).toString())) {
                        vpnProfile.mTLSAuthFilename = next3.get(1);
                        vpnProfile.mUseTLSAuth = true;
                    }
                    if (next3.size() == 3) {
                        vpnProfile.mTLSAuthDirection = next3.get(2);
                    }
                }
            }
        }
        Vector<String> option2 = getOption(new ObfuscatedString(new long[]{8143867857707165093L, -473751507339838733L, -8608095583025191336L}).toString(), 1, 1);
        if (option2 != null) {
            vpnProfile.mTLSAuthDirection = option2.get(1);
        }
        Vector<String> option3 = getOption(new ObfuscatedString(new long[]{-7699805397025132491L, 5712889724694851113L, 6868673248520709487L}).toString(), 1, 1);
        if (option3 != null) {
            vpnProfile.mUseTLSAuth = true;
            vpnProfile.mTLSAuthFilename = option3.get(1);
            vpnProfile.mTLSAuthDirection = new ObfuscatedString(new long[]{1537775303356125702L, 3835501892702639167L, -6173295083750360267L}).toString();
        }
        Vector<Vector<String>> allOption4 = getAllOption(new ObfuscatedString(new long[]{3114117011801317102L, -3531260141534339403L, -6694980493949616219L}).toString(), 0, 5);
        if (allOption4 != null) {
            vpnProfile.mUseDefaultRoute = true;
            checkRedirectParameters(vpnProfile, allOption4);
        }
        Vector<Vector<String>> allOption5 = getAllOption(new ObfuscatedString(new long[]{7676715578497804254L, 2650551643449226956L, 6630750907245831062L}).toString(), 0, 5);
        if (allOption5 != null) {
            checkRedirectParameters(vpnProfile, allOption5);
        }
        Vector<String> option4 = getOption(new ObfuscatedString(new long[]{1828840813565022021L, -2770765640099076621L}).toString(), 1, 1);
        Vector<String> option5 = getOption(new ObfuscatedString(new long[]{-8663271511515443773L, 1105580568835503357L}).toString(), 1, 1);
        if ((option5 != null && option5.get(1).equals(new ObfuscatedString(new long[]{8664222776904152011L, -1276700135644839933L}).toString())) || ((option4 != null && option4.get(1).startsWith(new ObfuscatedString(new long[]{-2681955639179342317L, 409538791489747814L}).toString())) || (option5 == null && option4 == null))) {
            Vector<String> option6 = getOption(new ObfuscatedString(new long[]{-1377412174166282810L, 4869174889688367050L}).toString(), 0, 1);
            if (option6 != null) {
                if (option6.size() >= 2) {
                    try {
                        vpnProfile.mMssFix = Integer.parseInt(option6.get(1));
                    } catch (NumberFormatException unused3) {
                        throw new ConfigParseError(new ObfuscatedString(new long[]{6254246097396008071L, -1990985976583170175L, 4691907010262343149L, -3336208145291940651L, 6498209715124428653L, -3721675963717413464L, -285646331256494518L}).toString());
                    }
                } else {
                    vpnProfile.mMssFix = 1450;
                }
            }
            Vector<String> option7 = getOption(new ObfuscatedString(new long[]{5340201586156262948L, 6604088352576242250L}).toString(), 1, 1);
            if (option7 != null && !option7.get(1).equals(new ObfuscatedString(new long[]{555547933650075940L, -4359008987147580255L}).toString())) {
                throw new ConfigParseError(new ObfuscatedString(new long[]{1346804711274544277L, -6321213469653855385L, 8664492923056956209L, -496889383052554095L, -4579098648772562286L, -5322992261352504948L, -3635981221911734652L}).toString());
            }
            Vector<Vector<String>> allOption6 = getAllOption(new ObfuscatedString(new long[]{158317788120270875L, -5053621521732817103L, -6600507592022034792L}).toString(), 2, 2);
            if (allOption6 != null) {
                Iterator<Vector<String>> it4 = allOption6.iterator();
                while (it4.hasNext()) {
                    Vector<String> next4 = it4.next();
                    String str = next4.get(1);
                    String str2 = next4.get(2);
                    if (str.equals(new ObfuscatedString(new long[]{3615205279299953418L, -1225269936437520236L}).toString())) {
                        vpnProfile.mSearchDomain = next4.get(2);
                    } else if (str.equals(new ObfuscatedString(new long[]{-7477551481464529697L, 1042151010402074929L}).toString())) {
                        vpnProfile.mOverrideDNS = true;
                        if (vpnProfile.mDNS1.equals(VpnProfile.DEFAULT_DNS1)) {
                            vpnProfile.mDNS1 = str2;
                        } else {
                            vpnProfile.mDNS2 = str2;
                        }
                    }
                }
            }
            Vector<String> option8 = getOption(new ObfuscatedString(new long[]{-8034574831482213458L, -3382546728338184581L}).toString(), 2, 2);
            if (option8 != null) {
                try {
                    vpnProfile.mIPv4Address = new CIDRIP(option8.get(1), option8.get(2)).toString();
                } catch (NumberFormatException e) {
                    throw new ConfigParseError(new ObfuscatedString(new long[]{-7654241541069120906L, 1535448545898322210L, -3439579970595807860L, 5256094557950757026L, 9094974825842505530L, 2621507345040022647L}).toString() + e.getLocalizedMessage());
                }
            }
            if (getOption(new ObfuscatedString(new long[]{7343647779807933909L, -7654404063337924368L, -1708084896978645039L, -4635155645039778056L}).toString(), 0, 0) != null) {
                vpnProfile.mUseRandomHostname = true;
            }
            if (getOption(new ObfuscatedString(new long[]{-2250689190742299155L, 3194215753129745498L}).toString(), 0, 0) != null) {
                vpnProfile.mUseFloat = true;
            }
            if (getOption(new ObfuscatedString(new long[]{-1161852166043579200L, 2533326437395178037L}).toString(), 0, 1) != null) {
                vpnProfile.mUseLzo = true;
            }
            Vector<String> option9 = getOption(new ObfuscatedString(new long[]{857397882762670722L, 6090861930529350296L}).toString(), 1, 1);
            if (option9 != null) {
                vpnProfile.mCipher = option9.get(1);
            }
            Vector<String> option10 = getOption(new ObfuscatedString(new long[]{4649036968711933658L, -1330638439754573755L}).toString(), 1, 1);
            if (option10 != null) {
                vpnProfile.mAuth = option10.get(1);
            }
            Vector<String> option11 = getOption(new ObfuscatedString(new long[]{-7590257336741141188L, -1431015324260441718L}).toString(), 1, 1);
            if (option11 != null) {
                vpnProfile.mCaFilename = option11.get(1);
            }
            Vector<String> option12 = getOption(new ObfuscatedString(new long[]{8642932017160554494L, -4814606595793988546L}).toString(), 1, 1);
            if (option12 != null) {
                vpnProfile.mClientCertFilename = option12.get(1);
                vpnProfile.mAuthenticationType = 0;
                z = false;
            }
            Vector<String> option13 = getOption(new ObfuscatedString(new long[]{4606800307703359507L, 5345587796088458191L}).toString(), 1, 1);
            if (option13 != null) {
                vpnProfile.mClientKeyFilename = option13.get(1);
            }
            Vector<String> option14 = getOption(new ObfuscatedString(new long[]{7901211564935356185L, -6685882666407461612L}).toString(), 1, 1);
            if (option14 != null) {
                vpnProfile.mPKCS12Filename = option14.get(1);
                vpnProfile.mAuthenticationType = 2;
                z = false;
            }
            if (getOption(new ObfuscatedString(new long[]{8108077829568202231L, 5799364729493814606L, -2102235244158200679L}).toString(), 1, 1) != null) {
                vpnProfile.mAuthenticationType = 2;
                z = false;
            }
            Vector<String> option15 = getOption(new ObfuscatedString(new long[]{6020744037483141224L, -5368083936513665503L, -5662764523456525042L}).toString(), 1, 2);
            Vector<String> option16 = getOption(new ObfuscatedString(new long[]{-2405501060625346042L, -6800128939344727294L, -3812791814117295082L, -2497028304693254021L}).toString(), 1, 1);
            Vector<String> option17 = getOption(new ObfuscatedString(new long[]{5403024343429677064L, 3592223766255401366L, -6144666333736499871L}).toString(), 1, 1);
            if (option17 != null) {
                vpnProfile.mRemoteCN = option17.get(1);
                vpnProfile.mCheckRemoteCN = true;
                vpnProfile.mX509AuthType = 0;
                if ((option15 != null && option15.size() > 2) || option16 != null) {
                    vpnProfile.mX509AuthType = 1;
                }
            }
            Vector<String> option18 = getOption(new ObfuscatedString(new long[]{-5329138136792250177L, -837492560779983483L, 5618937831323331512L}).toString(), 1, 2);
            if (option18 != null) {
                vpnProfile.mRemoteCN = option18.get(1);
                vpnProfile.mCheckRemoteCN = true;
                if (option18.size() > 2) {
                    if (option18.get(2).equals(new ObfuscatedString(new long[]{-7191860465924541071L, 8322348789184615711L}).toString())) {
                        vpnProfile.mX509AuthType = 3;
                    } else if (option18.get(2).equals(new ObfuscatedString(new long[]{-3796998475179465621L, 632582896832972302L}).toString())) {
                        vpnProfile.mX509AuthType = 2;
                    } else if (option18.get(2).equals(new ObfuscatedString(new long[]{6226319017751867810L, 5494601559543310778L, -8404110453002134991L}).toString())) {
                        vpnProfile.mX509AuthType = 4;
                    } else {
                        throw new ConfigParseError(new ObfuscatedString(new long[]{-7049914193473941021L, -1589760815962351899L, -8221213722246039438L, 8364485218734179216L, -7502327911851038772L, -4068558460463471401L}).toString() + option18.get(2));
                    }
                } else {
                    vpnProfile.mX509AuthType = 2;
                }
            }
            Vector<String> option19 = getOption(new ObfuscatedString(new long[]{-511424780111301967L, -1311755634818900821L, -1153258512508045252L, 5998284074209018953L}).toString(), 1, 1);
            if (option19 != null) {
                vpnProfile.mx509UsernameField = option19.get(1);
            }
            Vector<String> option20 = getOption(new ObfuscatedString(new long[]{-6584214218806388539L, -823828211051776822L}).toString(), 1, 1);
            if (option20 != null) {
                vpnProfile.mVerb = option20.get(1);
            }
            if (getOption(new ObfuscatedString(new long[]{5818813879712462902L, 8912933079111958241L}).toString(), 0, 0) != null) {
                vpnProfile.mNobind = true;
            }
            if (getOption(new ObfuscatedString(new long[]{-2823405703411047004L, 8321093314855666724L, -977426280815351472L}).toString(), 0, 0) != null) {
                vpnProfile.mPersistTun = true;
            }
            if (getOption(new ObfuscatedString(new long[]{465963882301945591L, 5081122360335132274L, 1961403661297790077L}).toString(), 0, 0) != null) {
                vpnProfile.mPushPeerInfo = true;
            }
            Vector<String> option21 = getOption(new ObfuscatedString(new long[]{1568446076670186567L, -646927461106292887L, -6852960749911704132L}).toString(), 1, 2);
            if (option21 != null) {
                vpnProfile.mConnectRetry = option21.get(1);
                if (option21.size() > 2) {
                    vpnProfile.mConnectRetryMaxTime = option21.get(2);
                }
            }
            Vector<String> option22 = getOption(new ObfuscatedString(new long[]{866167848779338749L, 163290067750530557L, -3262601005894445974L, 8585197548378001888L}).toString(), 1, 1);
            if (option22 != null) {
                vpnProfile.mConnectRetryMax = option22.get(1);
            }
            Vector<Vector<String>> allOption7 = getAllOption(new ObfuscatedString(new long[]{4147504436376950203L, -5580255320850175075L, -126255135131898425L}).toString(), 1, 1);
            if (allOption7 != null) {
                if (allOption7.get(0).get(1).equals(new ObfuscatedString(new long[]{7917493639307532907L, 7290716038010921491L}).toString())) {
                    vpnProfile.mExpectTLSCert = true;
                } else {
                    this.options.put(new ObfuscatedString(new long[]{132774971911316852L, 2331416744996001588L, -1308638522305039827L}).toString(), allOption7);
                }
            }
            Vector<String> option23 = getOption(new ObfuscatedString(new long[]{632131724316780413L, 5333024844138935818L, -1603420382732207800L}).toString(), 0, 1);
            if (option23 != null) {
                if (z) {
                    vpnProfile.mAuthenticationType = 3;
                } else {
                    int i = vpnProfile.mAuthenticationType;
                    if (i == 0) {
                        vpnProfile.mAuthenticationType = 5;
                    } else if (i == 2) {
                        vpnProfile.mAuthenticationType = 7;
                    }
                }
                if (option23.size() > 1) {
                    if (!option23.get(1).startsWith(new ObfuscatedString(new long[]{4219447094094502711L, 2067045895357416163L, -5840814756759651434L}).toString())) {
                        this.auth_user_pass_file = option23.get(1);
                    }
                    vpnProfile.mUsername = null;
                    useEmbbedUserAuth(vpnProfile, option23.get(1));
                }
            }
            Vector<String> option24 = getOption(new ObfuscatedString(new long[]{6957465094646481710L, -8225566889768646972L, 7535680465262433494L}).toString(), 1, 2);
            if (option24 != null) {
                if (option24.size() == 3 && option24.get(2).equals(new ObfuscatedString(new long[]{2940864285682107052L, 1737145433611860554L}).toString())) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(vpnProfile.mCustomConfigOptions);
                    sb.append(TextUtils.join(new ObfuscatedString(new long[]{5660826066438081074L, 4196167129932725964L}).toString(), option24));
                    vpnProfile.mCustomConfigOptions = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6029995464059628413L, -2305322003836514109L}), sb);
                } else {
                    vpnProfile.mCrlFilename = option24.get(1);
                }
            }
            Pair<Connection, Connection[]> parseConnectionOptions = parseConnectionOptions(null);
            vpnProfile.mConnections = parseConnectionOptions.second;
            Vector<Vector<String>> allOption8 = getAllOption(new ObfuscatedString(new long[]{825951706203492525L, 2782601278059542078L, -5912937132519598326L}).toString(), 1, 1);
            if (vpnProfile.mConnections.length > 0 && allOption8 != null) {
                throw new ConfigParseError(new ObfuscatedString(new long[]{7053762346175867289L, 4929560320573762285L, 4604508583139949315L, -4321760214091048779L, -6703322012669146520L, 348010919503772714L, -7570356447133354741L, 2204210222263842369L}).toString());
            }
            if (allOption8 != null) {
                vpnProfile.mConnections = new Connection[allOption8.size()];
                Iterator<Vector<String>> it5 = allOption8.iterator();
                int i2 = 0;
                while (it5.hasNext()) {
                    Connection[] connectionArr = parseConnection(it5.next().get(1), parseConnectionOptions.first).second;
                    if (connectionArr.length == 1) {
                        vpnProfile.mConnections[i2] = connectionArr[0];
                        i2++;
                    } else {
                        throw new ConfigParseError(new ObfuscatedString(new long[]{3606317260627996163L, -511223995628530516L, 2034038836863265378L, -5272178270972635903L, -6163656166823361059L, 5406071067495722076L, 7472117675520436383L, -9209333741059435901L}).toString());
                    }
                }
            }
            if (getOption(new ObfuscatedString(new long[]{5114209597041340438L, -793523614488607617L, -8925076811323953818L}).toString(), 0, 0) != null) {
                vpnProfile.mRemoteRandom = true;
            }
            Vector<String> option25 = getOption(new ObfuscatedString(new long[]{-8202799190558113042L, -6341876284682615576L, -275841072351460522L}).toString(), 1, 1);
            if (option25 != null) {
                String str3 = option25.get(1);
                if (str3.equals(new ObfuscatedString(new long[]{8058962774670843688L, 2307531276426107555L}).toString())) {
                    z2 = true;
                } else {
                    if (!str3.equals(new ObfuscatedString(new long[]{-7863863386782925287L, 5908806715107780402L}).toString())) {
                        throw new ConfigParseError(String.format(new ObfuscatedString(new long[]{2720288002909416940L, -6444505137936918591L, -4424635885291084493L, 5743279056994074456L, 6405933011476492557L, -5762789709758521557L}).toString(), str3));
                    }
                    z2 = false;
                }
                for (Connection connection : vpnProfile.mConnections) {
                    if (connection.mUseUdp == z2) {
                        connection.mEnabled = false;
                    }
                }
            }
            Vector<String> vector = this.meta.get(new ObfuscatedString(new long[]{-2803258405176625696L, 6082399812691476542L, 7555011993836539467L}).toString());
            if (vector != null && vector.size() > 1) {
                vpnProfile.mName = vector.get(1);
            }
            Vector<String> vector2 = this.meta.get(new ObfuscatedString(new long[]{5764326949118304387L, 1025205810728523099L}).toString());
            if (vector2 != null && vector2.size() > 1) {
                vpnProfile.mUsername = vector2.get(1);
            }
            checkIgnoreAndInvalidOptions(vpnProfile);
            fixup(vpnProfile);
            return vpnProfile;
        }
        throw new ConfigParseError(new ObfuscatedString(new long[]{257374184522294670L, 5162713617677128017L, 6736187761863892270L, -5689976333423726931L, 2199503156785497229L, -5770594247571622330L, 4247305378738477098L, -1094181901123167224L, -8787964147587927172L}).toString());
    }

    public String getAuthUserPassFile() {
        return this.auth_user_pass_file;
    }

    public boolean ignoreThisOption(Vector<String> vector) {
        for (String[] strArr : this.ignoreOptionsWithArg) {
            if (vector.size() >= strArr.length) {
                for (int i = 0; i < strArr.length; i++) {
                    if (!strArr[i].equals(vector.get(i))) {
                        break;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0086, code lost:
    
        throw new com.tknetwork.tunnel.core.ConfigParser.ConfigParseError(new com.panda912.muddy.ObfuscatedString(new long[]{-1858890361124350455L, -4845569574207510296L, -6905262355552357695L, -8812142539524550268L, -7807973152772639438L, 6220024208048550407L, -2129078697425650652L, -8622408443183462451L, -1736694065251903054L, 4306745731490387378L, -6095914651653428690L, -3949738557122409121L, -6587312259545712290L}).toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parseConfig(Reader reader) {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{5863257911100470186L, -1511793813214029794L, 318694984554639920L, 6983624916415193626L}).toString(), new ObfuscatedString(new long[]{7277646530928929468L, -983189563361910714L, -5290624693484637635L}).toString());
        BufferedReader bufferedReader = new BufferedReader(reader);
        int i = 0;
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                i++;
                if (readLine == null) {
                    return;
                }
                if (i == 1) {
                    if (readLine.startsWith(new ObfuscatedString(new long[]{-585450203210347890L, -7349720915633445730L}).toString()) || readLine.startsWith("PK\u0007\u00008")) {
                        break;
                    } else if (readLine.startsWith(new ObfuscatedString(new long[]{3566472012782269225L, 6268575413242186738L}).toString())) {
                        readLine = readLine.substring(1);
                    }
                }
                if (readLine.startsWith(new ObfuscatedString(new long[]{-8956515046874085955L, 5072435018053724197L, 4843055947652237432L, 1740918576247679045L}).toString())) {
                    Vector<String> parsemeta = parsemeta(readLine);
                    this.meta.put(parsemeta.get(0), parsemeta);
                } else {
                    Vector<String> parseline = parseline(readLine);
                    if (parseline.size() != 0) {
                        if (parseline.get(0).startsWith(new ObfuscatedString(new long[]{2450756293237163297L, 7165113496682975620L}).toString())) {
                            parseline.set(0, parseline.get(0).substring(2));
                        }
                        checkinlinefile(parseline, bufferedReader);
                        String str = parseline.get(0);
                        if (hashMap.get(str) != null) {
                            str = (String) hashMap.get(str);
                        }
                        if (!this.options.containsKey(str)) {
                            this.options.put(str, new Vector<>());
                        }
                        this.options.get(str).add(parseline);
                    }
                }
            } catch (OutOfMemoryError e) {
                throw new ConfigParseError(new ObfuscatedString(new long[]{-1568980683773917779L, -8199604642145183364L, 8656000504913754691L, -95864428500541734L, -1266571938159418549L}).toString() + e.getLocalizedMessage());
            }
        }
    }
}
