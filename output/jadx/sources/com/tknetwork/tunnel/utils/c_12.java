package com.tknetwork.tunnel.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ActivityUi;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import kotlin.io.encoding.Base64;
import okio.Utf8;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class c_12 {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String GOOGLE_SIGN = new ObfuscatedString(new long[]{5199370923385902855L, -4836720070270580734L, 3082987158572951040L, 5220406447500706694L, 6830899289419017193L, 7817619776506265864L, 2528372112264178301L, -4917741481237135293L, 3278691153847603694L, 8484509961913593570L, -7160229962985118098L, 6611521000396109254L, 4067685372383297066L, -4144880192855844860L, -683893332132255175L, -8774019408387115978L, 6647466229258103867L, -5275626165662697048L, -335511698791283556L, -6508826913685726092L, 5473866263948905420L, 6645147677338620155L, -8722574716684249215L, 5388118233751808852L, -3924902788417709932L, -6647065148720633162L, 8665778802448729970L, 2444258502613377902L, 6223185916611607701L, 5172838229303288868L, 3604159573776553376L, 5078625190615901653L, 3980014849595263936L, 2822850713567612144L, -2119800778970291533L, 8337689243820883145L, -8528409316405380429L, -5846729454561334435L, -7713225650333892311L, 6502237739520313183L, 7043255061489071522L, -1838262906001369116L, 5396025835397723955L, -7609877490608641526L, 5783339893398266238L, -2801759271576065961L, 5354907859899239975L, 5836245532945963038L, 3095379282640260727L, -5930303773768688575L, -4385185363744390528L, -2603469108385922455L, -3449741220747395133L, -4740381488949439255L, 354333824576582070L, -4730875064852378949L, 6317798507089607449L, 1279041570662413243L, -1214182854900697441L, 3439414382339472340L, 1618389068183193232L, -6553889943125551909L, 568911533166173356L, 312363046111837953L, 6477584195626141113L, -3627500181611028656L, -8277585247349063321L, -356270025453688687L, -2820278016225956378L, 4134781365285787355L, -8913463202983067708L, 863803190964628794L, -2585613691807419705L, 1741297306640441668L, -180211558423859855L, -6200142744986873430L, -909568445542759666L, 9146542932519188294L, 7515025328819724046L, 3815244945806138637L, 3414353371220630387L, 2155873619529020736L, 3591372854820053076L, -4702906849120164481L, 4094806091784907396L, -5852793682092200701L, -8556142194116604642L, 7519232755272989524L, 6237701179194741681L, -8835260831146140367L, -1360719558195729947L, -262978972265969972L, 7364410224106080951L, -5650771736075282776L, 7909193622537307528L, 7841584501799054776L, -3727777076293521763L, -1005430937436832208L, 823199671002044892L, -4347126009620353933L, 5780861218129911586L, 3377334399753663287L, 1261932747149920303L, -2140261312201111945L, -7368492813043424905L, 3150608974803762654L, 7552789309191398204L, 7274614079316109677L, -6829469863787723991L, -82426082417975393L, 1631929445654159496L, 1314011762928619542L, -1273444023545322714L, -6108277822027221057L, 1018630367202288329L, 9154144691260529378L, -4727288722327577009L, -5716511766670582613L, 3666280497331195878L, -4739166183286405700L, -2503586228435375655L, -1669999217576289759L, -5513562776914661412L, 7219489886432273867L, 7423317412788657743L, 5067200230277768669L, 2221896849060063962L, -7103226235937273334L, -1044332036708263181L, 4543916496536894201L, 8562475061938058425L, -5555803295711914502L, -1335895552077969076L, -7735520117571690560L, 3296213797121810090L, -7865353660758947534L, 8776354100062536161L, 5648217435001105332L, 8354568378861478324L, -4200107077217664857L, -648591622736088819L, 2923720799989642609L, 2136478441869017558L, -7756391705550851978L, 2933716332987618231L, -2915040111241231423L, -5084733450365400107L, 5937887471369115534L, 5909284003198667767L, 8761205012907642108L, -2245683056972765248L, 6437035722718284161L, 1819333430103126678L}).toString();

    /* loaded from: classes3.dex */
    public static class Parser {
        public static String d_01(String str) {
            try {
                return c_13.decrypt(new ObfuscatedString(new long[]{-2942540061455797960L, 4310037508325703578L, -8028494481385936071L, -2046608146403132968L, 5011761359650193944L}).toString().replace(new ObfuscatedString(new long[]{-6004690704514248269L, 4593641649907412338L}).toString(), new ObfuscatedString(new long[]{7740079581448946543L, -5479356347751665626L}).toString()).replace(new ObfuscatedString(new long[]{727237727056447171L, 7785374218891752645L}).toString(), new ObfuscatedString(new long[]{6991791966374306278L, 1301652733237040103L}).toString()).replace(new ObfuscatedString(new long[]{3011690392678512363L, 7399138071814680296L}).toString(), new ObfuscatedString(new long[]{6908890079810002L, -411254354625561618L}).toString()).replace(new ObfuscatedString(new long[]{2497019340982093360L, -4007547535986342334L}).toString(), new ObfuscatedString(new long[]{7253885505376744014L, -2156502767932233932L}).toString()).replace(new ObfuscatedString(new long[]{8524046594085022107L, 2124815227148816091L}).toString(), new ObfuscatedString(new long[]{-302607185997870080L, -4506608680914550379L}).toString()).replace(new ObfuscatedString(new long[]{-8662546906190245015L, -2462366802438719509L}).toString(), new ObfuscatedString(new long[]{4378201048837506408L, -7916408865681205817L}).toString()).replace(new ObfuscatedString(new long[]{3631574862951585506L, -7775444814623777505L}).toString(), new ObfuscatedString(new long[]{2075106129652938823L, -3827906422801655038L}).toString()).replace(new ObfuscatedString(new long[]{-8925184306609889036L, 5878833098826759382L}).toString(), new ObfuscatedString(new long[]{1030519007472449704L, -1802416870989634984L}).toString()).replace(new ObfuscatedString(new long[]{-7857197006129079741L, -9048127256435350394L}).toString(), new ObfuscatedString(new long[]{5510790340288992451L, -5983473747912397872L}).toString()).replace(new ObfuscatedString(new long[]{5758506495479918003L, -6513355595928054643L}).toString(), new ObfuscatedString(new long[]{4402963559903368725L, -3955036878950893293L}).toString()).replace(new ObfuscatedString(new long[]{-1275512388012974025L, 865460795173974715L}).toString(), new ObfuscatedString(new long[]{2264355122178482116L, 7339285223229903051L}).toString()).replace(new ObfuscatedString(new long[]{-1894971577890785647L, 851786293630714348L}).toString(), new ObfuscatedString(new long[]{-5235028516715888656L, 8620218387357353221L}).toString()).replace(new ObfuscatedString(new long[]{213916155255180648L, -4601923697733040337L}).toString(), new ObfuscatedString(new long[]{-8662647249525005740L, -7472796651250835573L}).toString()).replace(new ObfuscatedString(new long[]{-7546317211854828767L, 2462161696644493489L}).toString(), new ObfuscatedString(new long[]{912585284218137405L, 6670118789080689105L}).toString()).replace(new ObfuscatedString(new long[]{2120929204184719935L, -983993980593847645L}).toString(), new ObfuscatedString(new long[]{7595476595185290846L, -3898229898584841666L}).toString()).replace(new ObfuscatedString(new long[]{8030039472044668084L, 5156541491903878773L}).toString(), new ObfuscatedString(new long[]{3474729089359332766L, -6150392355034790740L}).toString()).replace(new ObfuscatedString(new long[]{-6371856637581818868L, -8756949046608879002L}).toString(), new ObfuscatedString(new long[]{4445499596007106586L, 1959218136223656558L}).toString()).replace(new ObfuscatedString(new long[]{4389857541968656849L, 1597187726268507384L}).toString(), new ObfuscatedString(new long[]{-7080334518502319311L, 5004228922619586589L}).toString()).replace(new ObfuscatedString(new long[]{1675848426932092144L, 8707921023658518922L}).toString(), new ObfuscatedString(new long[]{2092913029593155L, -7391548913348130069L}).toString()).replace(new ObfuscatedString(new long[]{-9031106129163237737L, 3361134014938049538L}).toString(), new ObfuscatedString(new long[]{-7707854134981138630L, 6475507343573024634L}).toString()).replace(new ObfuscatedString(new long[]{-2489347060157037177L, 1223359447083975844L}).toString(), new ObfuscatedString(new long[]{-1395310534406617068L, 2823297761775144428L}).toString()).replace(new ObfuscatedString(new long[]{-3884541247047717194L, 6117181834096242591L}).toString(), new ObfuscatedString(new long[]{286366364927252050L, -6573358061513610113L}).toString()).replace(new ObfuscatedString(new long[]{3175592135034419176L, 8141778521120582906L}).toString(), new ObfuscatedString(new long[]{4364362972272072738L, -4716291011774008325L}).toString()).replace(new ObfuscatedString(new long[]{-3113064007694257433L, 2574637605590814100L}).toString(), new ObfuscatedString(new long[]{-3372480074568083270L, 145932935778045779L}).toString()).replace(new ObfuscatedString(new long[]{2606849659438645759L, 8938101101213272221L}).toString(), new ObfuscatedString(new long[]{2329452213014426987L, -3863853001074165240L}).toString()).replace(new ObfuscatedString(new long[]{-2718343928634148099L, -2792060315677450415L}).toString(), new ObfuscatedString(new long[]{-7010656330095471721L, -7436556683712608949L}).toString()), str);
            } catch (GeneralSecurityException unused) {
                return str;
            }
        }

        public static byte[] decode(byte[] bArr) {
            int length = bArr.length;
            while (bArr[length - 1] == 61) {
                length--;
            }
            int length2 = length - (bArr.length / 4);
            byte[] bArr2 = new byte[length2];
            int i = 0;
            for (int i2 = 0; i2 < bArr.length; i2++) {
                byte b = bArr[i2];
                if (b == 61) {
                    bArr[i2] = 0;
                } else if (b == 47) {
                    bArr[i2] = Utf8.REPLACEMENT_BYTE;
                } else if (b == 43) {
                    bArr[i2] = 62;
                } else if (b >= 48 && b <= 57) {
                    bArr[i2] = (byte) (b + 4);
                } else if (b >= 97 && b <= 122) {
                    bArr[i2] = (byte) (b - 71);
                } else if (b >= 65 && b <= 90) {
                    bArr[i2] = (byte) (b - 65);
                }
            }
            int i3 = 0;
            while (i < length2 - 2) {
                int i4 = i3 + 1;
                bArr2[i] = (byte) (((bArr[i3] << 2) & 255) | ((bArr[i4] >>> 4) & 3));
                int i5 = i3 + 2;
                bArr2[i + 1] = (byte) (((bArr[i4] << 4) & 255) | ((bArr[i5] >>> 2) & 15));
                bArr2[i + 2] = (byte) (((bArr[i5] << 6) & 255) | (bArr[i3 + 3] & Utf8.REPLACEMENT_BYTE));
                i3 += 4;
                i += 3;
            }
            if (i < length2) {
                bArr2[i] = (byte) (((bArr[i3] << 2) & 255) | ((bArr[i3 + 1] >>> 4) & 3));
            }
            int i6 = i + 1;
            if (i6 < length2) {
                bArr2[i6] = (byte) (((bArr[i3 + 2] >>> 2) & 15) | ((bArr[i3 + 1] << 4) & 255));
            }
            return bArr2;
        }

        public static String encode(byte[] bArr) {
            if (bArr == null) {
                return null;
            }
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            for (int i = 0; i < length; i++) {
                bArr2[i] = (byte) (bArr[i] - 18);
            }
            int i2 = length + 2;
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr2, 0, bArr3, 0, length);
            int i3 = (i2 / 3) * 4;
            byte[] bArr4 = new byte[i3];
            int i4 = 0;
            int i5 = 0;
            while (i4 < length) {
                bArr4[i5] = (byte) ((bArr3[i4] >>> 2) & 63);
                int i6 = i4 + 1;
                bArr4[i5 + 1] = (byte) (((bArr3[i6] >>> 4) & 15) | ((bArr3[i4] << 4) & 63));
                int i7 = i4 + 2;
                bArr4[i5 + 2] = (byte) (((bArr3[i6] << 2) & 63) | ((bArr3[i7] >>> 6) & 3));
                bArr4[i5 + 3] = (byte) (63 & bArr3[i7]);
                i4 += 3;
                i5 += 4;
            }
            for (int i8 = 0; i8 < i3; i8++) {
                byte b = bArr4[i8];
                if (b < 26) {
                    bArr4[i8] = (byte) (b + 65);
                } else if (b < 52) {
                    bArr4[i8] = (byte) (b + 71);
                } else if (b < 62) {
                    bArr4[i8] = (byte) (b - 4);
                } else if (b < 63) {
                    bArr4[i8] = 43;
                } else {
                    bArr4[i8] = 47;
                }
            }
            while (true) {
                i3--;
                if (i3 > (length * 4) / 3) {
                    bArr4[i3] = Base64.padSymbol;
                } else {
                    return new String(bArr4);
                }
            }
        }

        public static String parse(String str) {
            try {
                return c_13.encrypt(new ObfuscatedString(new long[]{-3813944497051281564L, 8878620115032650724L, 4891153170393737177L, 7767699776765463465L, 2763538488798521794L}).toString().replace(new ObfuscatedString(new long[]{7829944238951924477L, 5763891089866371709L}).toString(), new ObfuscatedString(new long[]{3668384838913373321L, -5821786036462740032L}).toString()).replace(new ObfuscatedString(new long[]{3363120173445122708L, 767162482599532168L}).toString(), new ObfuscatedString(new long[]{-4933617681051069392L, 2446768117763167701L}).toString()).replace(new ObfuscatedString(new long[]{-8295423045611828997L, 4566956740244655182L}).toString(), new ObfuscatedString(new long[]{9110904076966653644L, -2230705619916370142L}).toString()).replace(new ObfuscatedString(new long[]{7476001256439196176L, -5015231602705395041L}).toString(), new ObfuscatedString(new long[]{2209993483614635546L, 3943975088696733379L}).toString()).replace(new ObfuscatedString(new long[]{-7337249675852589746L, 2168792197553547857L}).toString(), new ObfuscatedString(new long[]{-3095584450516939514L, 1413960173978701062L}).toString()).replace(new ObfuscatedString(new long[]{5090403860802265980L, -1216902336862798132L}).toString(), new ObfuscatedString(new long[]{-6599857605418992660L, -2218562216041365004L}).toString()).replace(new ObfuscatedString(new long[]{-4056604864107713233L, -8611798339891214376L}).toString(), new ObfuscatedString(new long[]{-2772291264273935354L, -2053054618005282994L}).toString()).replace(new ObfuscatedString(new long[]{-586110760638112745L, 1441190353401328152L}).toString(), new ObfuscatedString(new long[]{-1847430148881499699L, -418873876208504117L}).toString()).replace(new ObfuscatedString(new long[]{-9093079996855795013L, 6537504381023368819L}).toString(), new ObfuscatedString(new long[]{-1379888060609699576L, 5013084401371351800L}).toString()).replace(new ObfuscatedString(new long[]{-3007176708504573664L, 4035946018929876569L}).toString(), new ObfuscatedString(new long[]{3831176652591407087L, 7178216328399010354L}).toString()).replace(new ObfuscatedString(new long[]{3755886466513542557L, -5604324712609172893L}).toString(), new ObfuscatedString(new long[]{-8956925112606824319L, -904475519909472867L}).toString()).replace(new ObfuscatedString(new long[]{-8217701181946824153L, 3182655843711478207L}).toString(), new ObfuscatedString(new long[]{-569022598081203511L, -1612586049914507864L}).toString()).replace(new ObfuscatedString(new long[]{-2056485959928349231L, -8325125027415155040L}).toString(), new ObfuscatedString(new long[]{3554873322288181477L, -665736431629970432L}).toString()).replace(new ObfuscatedString(new long[]{2867921392436802194L, -8758230118775380045L}).toString(), new ObfuscatedString(new long[]{1795657717174440086L, -2986957574802527328L}).toString()).replace(new ObfuscatedString(new long[]{-6922786629082108120L, 1840464401350906428L}).toString(), new ObfuscatedString(new long[]{-6239890817066027580L, 4081721221751977027L}).toString()).replace(new ObfuscatedString(new long[]{706025395197927028L, 7836170913161672662L}).toString(), new ObfuscatedString(new long[]{1951554261480335016L, 514380445600125027L}).toString()).replace(new ObfuscatedString(new long[]{-3466810549464062967L, -8395117960341938765L}).toString(), new ObfuscatedString(new long[]{-6900929729683484220L, -664004607733105720L}).toString()).replace(new ObfuscatedString(new long[]{-1520353415297403195L, -1366786786969194652L}).toString(), new ObfuscatedString(new long[]{-4807750235061763492L, -702652397865724207L}).toString()).replace(new ObfuscatedString(new long[]{7376734214356534577L, -3112870740665556617L}).toString(), new ObfuscatedString(new long[]{-5967227585548477183L, -2996498303955156721L}).toString()).replace(new ObfuscatedString(new long[]{3564278761270123286L, -3211473054255323421L}).toString(), new ObfuscatedString(new long[]{-2839626846189595236L, -8970080960139632344L}).toString()).replace(new ObfuscatedString(new long[]{-8884826810028586529L, 3939304831835305575L}).toString(), new ObfuscatedString(new long[]{5681178411027368677L, 4185213765584033393L}).toString()).replace(new ObfuscatedString(new long[]{6919226370880897092L, 3204808855309716785L}).toString(), new ObfuscatedString(new long[]{-6804966005795911785L, -899777322324491541L}).toString()).replace(new ObfuscatedString(new long[]{7024037604349548791L, 4042122405244594985L}).toString(), new ObfuscatedString(new long[]{6092924955995858702L, -1453027787725055469L}).toString()).replace(new ObfuscatedString(new long[]{1266379695747575212L, 4368052242063078788L}).toString(), new ObfuscatedString(new long[]{-6092318483948763309L, -3674499617467557572L}).toString()).replace(new ObfuscatedString(new long[]{8005170632885292581L, -2650967476394676406L}).toString(), new ObfuscatedString(new long[]{-5871139753623642187L, 8637641015566438467L}).toString()).replace(new ObfuscatedString(new long[]{4708659231703183009L, 5750909670743975867L}).toString(), new ObfuscatedString(new long[]{3885758607482733518L, -5473605124899988059L}).toString()), str);
            } catch (GeneralSecurityException unused) {
                return str;
            }
        }
    }

    public static void checkSign(Context context) {
        try {
            if (!getAppSignature(context).equals(new ObfuscatedString(new long[]{-5020101008536508784L, -165216189069613018L, -870724583195970480L, 1256942382200060257L, 8613084462114045934L, 5915689659236473827L, 7948596411464472159L, 1065623532592199238L, -6318358576489762452L, -5656884707553017736L, -4979238989256979270L, -1228140436683173053L, 5083826095122193076L, 784306827098773949L, 2664602910851943666L, 6624592315661846223L, 908888927892268869L, -6071343504099059955L, -3952890861758787789L, -8012289777747436148L, -3388245809001632678L, 2807000127694244110L, 5558298929235816774L, -7397993605303399648L, 6516661618468877063L, -7631332599136696531L, 3413721162642417446L, 6971894335441369432L, 829952752510811777L, 677473952022509445L, -146709139958705819L, 4381966698745257133L, -1392698542046382507L, 5954353171400250957L, 8931082314289039716L, -2997700825149377430L, -4551917654142752525L, 7257583899008097554L, 7335044824519169936L, 563527337418254030L, 599637601628005062L, 7713747987883221802L, 475253544893364666L, 1980615169912608407L, -6087396621816601057L, -2439009550842046271L, 1633781431466081524L, -8513669385739783989L, 8399460411199133980L, -325863272298902835L, -4021641993990480386L, -1712067458223309408L, 1225164850542613246L, -4120199653930692214L, 2444411585231762776L, 8204664190671663691L, -5285883242238550863L, -810738541373775522L, 3800730226888307304L, -1538976914041676150L, -8961861474834632962L, -3606296152051699879L, -4815292950075411018L, -6098491546614413066L, -7508155614658751098L, 2781057336199844318L, -3141847533927766026L, -5518475920947037750L, 6159396748946555205L, 6391060667224182556L, 8505440769350265612L, 3111659127521487368L, 2804005620207728372L, 3456236417215769099L, 8865132513003636200L, -6911587166738569879L, 5686166639375398988L, -927247251772603547L, 4933441583640020684L, 5242042601026884755L, -8300339178225972518L, -7195600288662961834L, -1303194122233859939L, 7992481154432440611L, 6109091335321070224L, -5475544009161720334L, -5312232227334735096L, 3022158370901947523L, 2874719240909110674L, 6489977356696006611L, 509128355025702583L, 5854326704393999444L, 714187512553691173L, -4771024133990470741L, 328811707852540642L, -6793818501200293769L, -9142887032326463027L, 5527203400671319546L, 8012557112162185690L, -4652265211216547211L, -8034074295757304830L, 3174976120360324652L, -5657427251214235836L, 8759942865898363926L, -1391283855323507407L, -6531033102223613246L, -4658788485404662571L, 1049094188067516372L, 4487704717899925928L, 8352141736319147461L, 5157753582024849324L, 3895868212537780256L, 194724809454080393L, 8369135892645317843L, -5107838643117987367L, 3205986648027317821L, -3033260838860058322L, 8014716761898440647L, -4536160501489935722L, 5231656429973609381L, -2967054223803860502L, 7420473378655000350L, -665808014546308125L, 3411900841354668328L, -4759319707526362154L, 8868384983304394807L, 2265600307640054008L, 3695899065597136233L, -1874079568460264983L, 8144084248520233454L, -1625376068228391617L, -8828836499989062272L, 4305997820056542579L, -3820159255500931214L, -3198284786509312273L, -5046359159987517048L, -4112239145462147015L, 2649564015680337074L, 4253433698199519073L, -8084911035141742563L, 6668966199387027171L, -3116767742381934546L, 5492341857645229273L, 4351058880060450678L, -2827967693560643008L, 8154999325084238877L, 3557145657936053210L, -1353158982432694014L, 5962652728550380520L, -4638237283082099169L, -381330959129213630L, -1114641585976513625L, 3399488897552522324L}).toString())) {
                ((Activity) context).finish();
            }
        } catch (Exception unused) {
        }
    }

    public static String getAppBuildVersion(ActivityUi activityUi) {
        try {
            PackageInfo packageInfo = activityUi.getPackageManager().getPackageInfo(activityUi.getPackageName(), 0);
            return String.format(new ObfuscatedString(new long[]{7158952701518972341L, 7158487334718904879L, 5828160463559429145L, -5509506249551078629L, -8587542366907553951L}).toString(), activityUi.getString(R.string.app_name), packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
        } catch (Exception unused) {
            return null;
        }
    }

    public static PackageInfo getAppInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static String getAppSignature(Context context) {
        StringBuilder sb = new StringBuilder();
        for (Signature signature : context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures) {
            sb.append(signature.toCharsString());
        }
        return sb.toString();
    }

    public static String getConfigVersion(Context context) {
        File file = new File(context.getFilesDir(), new ObfuscatedString(new long[]{-208407178461946114L, -3431969146964869858L, -5873892910758984661L}).toString());
        if (file.exists()) {
            try {
                return new JSONObject(readFile(context, file)).getString(new ObfuscatedString(new long[]{-6980318944100795872L, -2888351111874221122L}).toString());
            } catch (Exception unused) {
                return new ObfuscatedString(new long[]{-5019728429107547809L, 6876375027765780420L, -7193597894802192147L}).toString();
            }
        }
        return new ObfuscatedString(new long[]{-9213220689077166529L, 4220035757189092260L, -8178758853922505541L}).toString();
    }

    public static String getIPAddress(boolean z) {
        boolean z2;
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String hostAddress = inetAddress.getHostAddress();
                        if (hostAddress.indexOf(58) < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z) {
                            if (z2) {
                                return hostAddress;
                            }
                        } else if (!z2) {
                            int indexOf = hostAddress.indexOf(37);
                            if (indexOf < 0) {
                                return hostAddress.toUpperCase();
                            }
                            return hostAddress.substring(0, indexOf).toUpperCase();
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return new ObfuscatedString(new long[]{-9062946830360619827L, 1073984494370951782L, -8466936912222000191L}).toString();
    }

    public static String getLocalIP() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return new ObfuscatedString(new long[]{-6247814230983012079L, -5992616101183994629L, 5146745568387736094L}).toString();
        } catch (SocketException unused) {
            return new ObfuscatedString(new long[]{6697390133158413479L, -6543930760982288710L, -2537154197454776383L, -2814389260336959376L}).toString();
        }
    }

    public static String readFile(Context context, File file) {
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            char[] cArr = new char[1024];
            while (true) {
                int read = bufferedReader.read(cArr, 0, 1024);
                if (read <= 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static void restart_app(Activity activity) {
        activity.startActivity(Intent.makeRestartActivityTask(activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName()).getComponent()));
        System.exit(0);
    }

    public static void showSnackInfo() {
    }
}
