package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Charsets;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.Immutable;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import defpackage.C0979x2a99d051;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
import kotlin.text.Typography;

@Immutable
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class MediaType {

    @LazyInit
    private int hashCode;
    private final ImmutableListMultimap<String, String> parameters;

    @CheckForNull
    @LazyInit
    private Optional<Charset> parsedCharset;
    private final String subtype;

    @CheckForNull
    @LazyInit
    private String toString;
    private final String type;
    private static final String CHARSET_ATTRIBUTE = new ObfuscatedString(new long[]{6947264574240622191L, -909928632252307490L}).toString();
    private static final String APPLICATION_TYPE = new ObfuscatedString(new long[]{-5192038419024452379L, 2465372169320171520L, 7440321744298948159L}).toString();
    private static final String AUDIO_TYPE = new ObfuscatedString(new long[]{629092518082758467L, 8805827131743464849L}).toString();
    private static final String IMAGE_TYPE = new ObfuscatedString(new long[]{6731377112579469876L, 2269402830886226961L}).toString();
    private static final String TEXT_TYPE = new ObfuscatedString(new long[]{-3081846455799382508L, 5617711541178877019L}).toString();
    private static final String VIDEO_TYPE = new ObfuscatedString(new long[]{-6086048488983882060L, -4583595077243871485L}).toString();
    private static final String FONT_TYPE = new ObfuscatedString(new long[]{6246873605654671187L, -5483839982877151429L}).toString();
    private static final String WILDCARD = new ObfuscatedString(new long[]{-7496918715112093422L, -6076063234488131879L}).toString();
    private static final ImmutableListMultimap<String, String> UTF_8_CONSTANT_PARAMETERS = ImmutableListMultimap.of(new ObfuscatedString(new long[]{8278188773191347183L, -8199749458602349474L}).toString(), Ascii.toLowerCase(Charsets.UTF_8.name()));
    private static final CharMatcher TOKEN_MATCHER = CharMatcher.ascii().and(CharMatcher.javaIsoControl().negate()).and(CharMatcher.isNot(' ')).and(CharMatcher.noneOf(new ObfuscatedString(new long[]{1228467517050160682L, -8398110612686048731L, -3988529683762898998L}).toString()));
    private static final CharMatcher QUOTED_TEXT_MATCHER = CharMatcher.ascii().and(CharMatcher.noneOf(new ObfuscatedString(new long[]{-9131772357697548094L, -1059677401899945155L}).toString()));
    private static final CharMatcher LINEAR_WHITE_SPACE = CharMatcher.anyOf(new ObfuscatedString(new long[]{-4610416862611486661L, 7468121400341645074L}).toString());
    private static final Map<MediaType, MediaType> KNOWN_TYPES = Maps.newHashMap();
    public static final MediaType ANY_TYPE = createConstant(new ObfuscatedString(new long[]{-5959885790316125902L, -5551108277604018962L}).toString(), new ObfuscatedString(new long[]{7842410207854942750L, -239769940328384576L}).toString());
    public static final MediaType ANY_TEXT_TYPE = createConstant(new ObfuscatedString(new long[]{-1878000667696310757L, -879829028789515495L}).toString(), new ObfuscatedString(new long[]{-7354303250675060283L, -4877363493272705325L}).toString());
    public static final MediaType ANY_IMAGE_TYPE = createConstant(new ObfuscatedString(new long[]{-3754947275044485818L, 5235358076748364068L}).toString(), new ObfuscatedString(new long[]{6724833244288791281L, 8254941799203181611L}).toString());
    public static final MediaType ANY_AUDIO_TYPE = createConstant(new ObfuscatedString(new long[]{-7681858743803253024L, -2753693169878649549L}).toString(), new ObfuscatedString(new long[]{-6029542592550784244L, -6318324343745444079L}).toString());
    public static final MediaType ANY_VIDEO_TYPE = createConstant(new ObfuscatedString(new long[]{-4065111391334814339L, 7017147002586706677L}).toString(), new ObfuscatedString(new long[]{-4700138523295166044L, 533046476140467880L}).toString());
    public static final MediaType ANY_APPLICATION_TYPE = createConstant(new ObfuscatedString(new long[]{-1835283958006464640L, 5260299032288969554L, 9174520840258966070L}).toString(), new ObfuscatedString(new long[]{-4253724060955335882L, -2816481489605843370L}).toString());
    public static final MediaType ANY_FONT_TYPE = createConstant(new ObfuscatedString(new long[]{8064067810089131218L, 141956627275093305L}).toString(), new ObfuscatedString(new long[]{-1167634736783670653L, -5795030896749737822L}).toString());
    public static final MediaType CACHE_MANIFEST_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{4972697068395727773L, 2525464624548738360L}).toString(), new ObfuscatedString(new long[]{-7029662788487913964L, 8173491876712824668L, -3838184190123902396L}).toString());
    public static final MediaType CSS_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-834934153506357174L, 7790421994750326774L}).toString(), new ObfuscatedString(new long[]{-2703386657520617623L, 7512671800786601333L}).toString());
    public static final MediaType CSV_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{3842958021399740732L, -7364044176666136526L}).toString(), new ObfuscatedString(new long[]{2093803670651369032L, 8274237722954723560L}).toString());
    public static final MediaType HTML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-1389666471042086419L, 4912943520769171623L}).toString(), new ObfuscatedString(new long[]{2683485655739477795L, 5106456897852594422L}).toString());
    public static final MediaType I_CALENDAR_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-6837799335067187665L, -7244523040978055521L}).toString(), new ObfuscatedString(new long[]{3025678735106042095L, -336353515589167311L}).toString());
    public static final MediaType PLAIN_TEXT_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{1257733006749266055L, -7938160605728100610L}).toString(), new ObfuscatedString(new long[]{7143351960277690665L, 8667479821727328112L}).toString());
    public static final MediaType TEXT_JAVASCRIPT_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{305170980535168962L, 7798964597507115757L}).toString(), new ObfuscatedString(new long[]{-641141829500462813L, 7917230346804335444L, -4536260855919832078L}).toString());
    public static final MediaType TSV_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-652379425870843938L, -5806934500871047901L}).toString(), new ObfuscatedString(new long[]{-852845932592973907L, -7185139186911545072L, 1735039067611815382L, 5198769170000235651L}).toString());
    public static final MediaType VCARD_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{7938686931846289451L, -7221094706068317487L}).toString(), new ObfuscatedString(new long[]{7035020903607387476L, 3134288259011707442L}).toString());
    public static final MediaType WML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-5167484758328085870L, 193949063093251843L}).toString(), new ObfuscatedString(new long[]{7521580664054085585L, -6400431602436791685L, -6626888107132520354L}).toString());
    public static final MediaType XML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{8705255949614373855L, -134367836661799866L}).toString(), new ObfuscatedString(new long[]{-6072579049473556797L, -833726742100007185L}).toString());
    public static final MediaType VTT_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{6340923697668992592L, 7436944158080855175L}).toString(), new ObfuscatedString(new long[]{-7684106988392109661L, 6125788205018295860L}).toString());
    public static final MediaType BMP = createConstant(new ObfuscatedString(new long[]{5391810038271790848L, 485386466966536801L}).toString(), new ObfuscatedString(new long[]{-873890190876010355L, 2343653066386269712L}).toString());
    public static final MediaType CRW = createConstant(new ObfuscatedString(new long[]{-5357239735869010371L, -7566508087905474013L}).toString(), new ObfuscatedString(new long[]{-4804558758652789823L, -567693237971876809L, 4325630063374450967L}).toString());
    public static final MediaType GIF = createConstant(new ObfuscatedString(new long[]{-5851131187739238667L, -8792918682292976505L}).toString(), new ObfuscatedString(new long[]{7080120837717937818L, 685917527482680263L}).toString());
    public static final MediaType ICO = createConstant(new ObfuscatedString(new long[]{-8452268487692584797L, -173306375230028867L}).toString(), new ObfuscatedString(new long[]{3065740691217495836L, -3672365309884051435L, 5234024091519778826L, -2195925398660710504L}).toString());
    public static final MediaType JPEG = createConstant(new ObfuscatedString(new long[]{7890475003887823256L, 3744512373903679370L}).toString(), new ObfuscatedString(new long[]{8602572224520148549L, -4588619657372458265L}).toString());
    public static final MediaType PNG = createConstant(new ObfuscatedString(new long[]{-8930896310820612329L, 4624798032659934149L}).toString(), new ObfuscatedString(new long[]{5463311134012435871L, -1239265166768414375L}).toString());
    public static final MediaType PSD = createConstant(new ObfuscatedString(new long[]{-7903117471949013641L, 7799521478517284168L}).toString(), new ObfuscatedString(new long[]{8327339430267990752L, 8121350275546793486L, -1797336469684663488L, 8780112085815906897L}).toString());
    public static final MediaType SVG_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{2806531371624241111L, 2632165545656146924L}).toString(), new ObfuscatedString(new long[]{8537471783261782738L, -5750748031406711990L}).toString());
    public static final MediaType TIFF = createConstant(new ObfuscatedString(new long[]{325844060115797145L, 343704436544420214L}).toString(), new ObfuscatedString(new long[]{-4435023706695480933L, -333600274304315117L}).toString());
    public static final MediaType WEBP = createConstant(new ObfuscatedString(new long[]{6885936515742585617L, -975413999176420292L}).toString(), new ObfuscatedString(new long[]{3577338912957903431L, -8106769627794136016L}).toString());
    public static final MediaType HEIF = createConstant(new ObfuscatedString(new long[]{6239722849343100225L, 6964173663319424600L}).toString(), new ObfuscatedString(new long[]{-5272642339649174243L, 3802985624431452016L}).toString());
    public static final MediaType JP2K = createConstant(new ObfuscatedString(new long[]{-2731771548908021422L, -4706415609671786090L}).toString(), new ObfuscatedString(new long[]{-4035315747055699777L, 5969260188254974865L}).toString());
    public static final MediaType MP4_AUDIO = createConstant(new ObfuscatedString(new long[]{1411855609272353649L, -8262655351234429517L}).toString(), new ObfuscatedString(new long[]{-5190261480737267763L, -2841820073986700426L}).toString());
    public static final MediaType MPEG_AUDIO = createConstant(new ObfuscatedString(new long[]{6246343974863420236L, -574603564114974412L}).toString(), new ObfuscatedString(new long[]{8588411681505348588L, -2456200074114151818L}).toString());
    public static final MediaType OGG_AUDIO = createConstant(new ObfuscatedString(new long[]{-2663837245794126900L, 6690142897905390162L}).toString(), new ObfuscatedString(new long[]{-6626693877598063939L, -3036880455348196533L}).toString());
    public static final MediaType WEBM_AUDIO = createConstant(new ObfuscatedString(new long[]{-5100422748965519531L, -3283237718835584327L}).toString(), new ObfuscatedString(new long[]{-5431450908106937201L, -3818339995879617986L}).toString());
    public static final MediaType L16_AUDIO = createConstant(new ObfuscatedString(new long[]{753386783290239900L, -6831504158335727865L}).toString(), new ObfuscatedString(new long[]{-1152134511779254891L, 7500387642297018495L}).toString());
    public static final MediaType L24_AUDIO = createConstant(new ObfuscatedString(new long[]{7561725242197827712L, -5922257112234151523L}).toString(), new ObfuscatedString(new long[]{3944219984802885915L, -2576973267666586212L}).toString());
    public static final MediaType BASIC_AUDIO = createConstant(new ObfuscatedString(new long[]{-8233371889454172310L, -5497091017530584533L}).toString(), new ObfuscatedString(new long[]{-824278103646450256L, 4017751563701593342L}).toString());
    public static final MediaType AAC_AUDIO = createConstant(new ObfuscatedString(new long[]{2298180415125842815L, -2570283867371344585L}).toString(), new ObfuscatedString(new long[]{972428485041264626L, -8440814452946554415L}).toString());
    public static final MediaType VORBIS_AUDIO = createConstant(new ObfuscatedString(new long[]{-432258648221787412L, -8914178968108953357L}).toString(), new ObfuscatedString(new long[]{-1817409369622008007L, -8165957225173332635L}).toString());
    public static final MediaType WMA_AUDIO = createConstant(new ObfuscatedString(new long[]{-8146187338909479477L, 7906263783619546058L}).toString(), new ObfuscatedString(new long[]{-172601434879071473L, 7708423330463366896L}).toString());
    public static final MediaType WAX_AUDIO = createConstant(new ObfuscatedString(new long[]{6467966708376718026L, -8531006095723267181L}).toString(), new ObfuscatedString(new long[]{553702908541292881L, -1063128134311693503L}).toString());
    public static final MediaType VND_REAL_AUDIO = createConstant(new ObfuscatedString(new long[]{4893483440468852356L, -1378006282037032118L}).toString(), new ObfuscatedString(new long[]{-8584815777745425444L, 4229883181327882148L, 3627141115759517923L}).toString());
    public static final MediaType VND_WAVE_AUDIO = createConstant(new ObfuscatedString(new long[]{3931452992841688868L, -275782877913945805L}).toString(), new ObfuscatedString(new long[]{9032895268563267570L, -4746472718060833305L}).toString());
    public static final MediaType MP4_VIDEO = createConstant(new ObfuscatedString(new long[]{-262311992294160999L, -8614361199949914959L}).toString(), new ObfuscatedString(new long[]{-6647540404228387086L, 7362570748610992701L}).toString());
    public static final MediaType MPEG_VIDEO = createConstant(new ObfuscatedString(new long[]{-6009804366392762353L, 1879571049951701471L}).toString(), new ObfuscatedString(new long[]{4405856784339561020L, -987032899920939526L}).toString());
    public static final MediaType OGG_VIDEO = createConstant(new ObfuscatedString(new long[]{-2919645508286376221L, -1269897213894256115L}).toString(), new ObfuscatedString(new long[]{2680988873521655444L, -8713129465715114804L}).toString());
    public static final MediaType QUICKTIME = createConstant(new ObfuscatedString(new long[]{7418670647183012342L, 8073593653889785586L}).toString(), new ObfuscatedString(new long[]{-5914084354265893673L, -3443935332641728675L, 7858893661723871127L}).toString());
    public static final MediaType WEBM_VIDEO = createConstant(new ObfuscatedString(new long[]{-8973863960362822492L, 7047342897337322640L}).toString(), new ObfuscatedString(new long[]{4550710851677890594L, 6450771161978700864L}).toString());
    public static final MediaType WMV = createConstant(new ObfuscatedString(new long[]{-3195333363873546542L, -811250298902287223L}).toString(), new ObfuscatedString(new long[]{3154665931167652346L, 7356809374886762794L}).toString());
    public static final MediaType FLV_VIDEO = createConstant(new ObfuscatedString(new long[]{-7912377358875517906L, 8112267948747429485L}).toString(), new ObfuscatedString(new long[]{-9182133086706240188L, -2626172571477336984L}).toString());
    public static final MediaType THREE_GPP_VIDEO = createConstant(new ObfuscatedString(new long[]{5187828482857153714L, 5106560566805700260L}).toString(), new ObfuscatedString(new long[]{4986958798235659181L, -6308222314522643210L}).toString());
    public static final MediaType THREE_GPP2_VIDEO = createConstant(new ObfuscatedString(new long[]{-9171715418393934075L, 6253765781629644362L}).toString(), new ObfuscatedString(new long[]{-8108470450642858689L, -1687507544606737212L}).toString());
    public static final MediaType APPLICATION_XML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{4881153659285978538L, 3781315767875198770L, 1386736618521803918L}).toString(), new ObfuscatedString(new long[]{-8501824826693664350L, -2584006279931543877L}).toString());
    public static final MediaType ATOM_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{4020626159607878462L, -3955558966209193708L, -5726110723095170455L}).toString(), new ObfuscatedString(new long[]{9116293744474275472L, -1723647373115865100L}).toString());
    public static final MediaType BZIP2 = createConstant(new ObfuscatedString(new long[]{1806451773152232339L, -5597754290224379584L, -3228070652729587137L}).toString(), new ObfuscatedString(new long[]{2355255543120257420L, -2282379583267961106L}).toString());
    public static final MediaType DART_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-3903553559862781036L, 6451241852423237800L, 603005317827969107L}).toString(), new ObfuscatedString(new long[]{100859562972528958L, -8240589966187742604L}).toString());
    public static final MediaType APPLE_PASSBOOK = createConstant(new ObfuscatedString(new long[]{8336343730981898278L, -4274562818885856308L, 3888197304858648452L}).toString(), new ObfuscatedString(new long[]{-4958238893674206301L, 8091913997467185912L, -4126918206852005981L}).toString());
    public static final MediaType EOT = createConstant(new ObfuscatedString(new long[]{5507656001653695686L, -252181452560065117L, 3582231894091892174L}).toString(), new ObfuscatedString(new long[]{8896966120466413812L, 3574115343309806491L, 5654963905045769369L, 4292091849437635129L}).toString());
    public static final MediaType EPUB = createConstant(new ObfuscatedString(new long[]{-7397327815235230003L, 244822779645167258L, -668079347811716912L}).toString(), new ObfuscatedString(new long[]{3806339604517615464L, -8892332961229235979L}).toString());
    public static final MediaType FORM_DATA = createConstant(new ObfuscatedString(new long[]{1343319590094385504L, 906362790892531463L, -7531184471404837265L}).toString(), new ObfuscatedString(new long[]{-541503424505240106L, -3798553184824680772L, 6726443389296780531L, -106341627125025574L}).toString());
    public static final MediaType KEY_ARCHIVE = createConstant(new ObfuscatedString(new long[]{-5414982354730609228L, -5177987829311013805L, 7709316315655512449L}).toString(), new ObfuscatedString(new long[]{3465121338129179316L, -5984727801222504148L}).toString());
    public static final MediaType APPLICATION_BINARY = createConstant(new ObfuscatedString(new long[]{-2583521971856676326L, -686089350635072310L, 6513735256165307900L}).toString(), new ObfuscatedString(new long[]{-1073481611390305581L, 8491824629915284235L}).toString());
    public static final MediaType GEO_JSON = createConstant(new ObfuscatedString(new long[]{8368604850664477378L, -6951055121863368834L, -6391267153138964719L}).toString(), new ObfuscatedString(new long[]{3932294331161791608L, -6580859223727129363L}).toString());
    public static final MediaType GZIP = createConstant(new ObfuscatedString(new long[]{4862364130033527674L, -1044236178310618496L, -5919156588357021967L}).toString(), new ObfuscatedString(new long[]{-7165243151849641877L, 8716097350151992809L}).toString());
    public static final MediaType HAL_JSON = createConstant(new ObfuscatedString(new long[]{8532072530163117871L, 936360241293729728L, 7743467806419273307L}).toString(), new ObfuscatedString(new long[]{9068035081693677040L, 1806962119237636861L}).toString());
    public static final MediaType JAVASCRIPT_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-7982600893557295281L, 3530307310151169433L, 400273538016880670L}).toString(), new ObfuscatedString(new long[]{438660364046114563L, 636468649185524979L, -5975191225748333476L}).toString());
    public static final MediaType JOSE = createConstant(new ObfuscatedString(new long[]{5896775657907620130L, 9025074064819894943L, -7293246344865617059L}).toString(), new ObfuscatedString(new long[]{-6532158871138083521L, -7583146630926975518L}).toString());
    public static final MediaType JOSE_JSON = createConstant(new ObfuscatedString(new long[]{-2116878298191098393L, 3308887083519343850L, 5868249621518012263L}).toString(), new ObfuscatedString(new long[]{-7381432701295025399L, 3057936608001359717L, -4915483922520006130L}).toString());
    public static final MediaType JSON_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{5752382687318423109L, 3972149173219637125L, 2577626723629793173L}).toString(), new ObfuscatedString(new long[]{259767984832476370L, 8376360845220301932L}).toString());
    public static final MediaType MANIFEST_JSON_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{5272604437765644050L, 2614163304759894678L, -202589969595596069L}).toString(), new ObfuscatedString(new long[]{8209499323435473562L, 3727115743774208610L, 5163484997240682860L}).toString());
    public static final MediaType KML = createConstant(new ObfuscatedString(new long[]{1466180053647476234L, 7031709945051937055L, 4180338455829018385L}).toString(), new ObfuscatedString(new long[]{-7896746816135349484L, 5385422770294070839L, 4903431113426472637L, 2700843308168769314L}).toString());
    public static final MediaType KMZ = createConstant(new ObfuscatedString(new long[]{-5565471210844588786L, -6631427885481636195L, 4526543763091637121L}).toString(), new ObfuscatedString(new long[]{-7800701955943422230L, -1812433070032305868L, 3084247497727298683L, 3252654112699981556L}).toString());
    public static final MediaType MBOX = createConstant(new ObfuscatedString(new long[]{819634217760969523L, 5569857004723011755L, -6793707691620411970L}).toString(), new ObfuscatedString(new long[]{3468198935944210822L, 4519601035766176045L}).toString());
    public static final MediaType APPLE_MOBILE_CONFIG = createConstant(new ObfuscatedString(new long[]{7036683783363959741L, 2138404413774058796L, 4756732208260784307L}).toString(), new ObfuscatedString(new long[]{-2112649558613548873L, -7977212651213862493L, -6357595057684622131L, -3287512550836804595L}).toString());
    public static final MediaType MICROSOFT_EXCEL = createConstant(new ObfuscatedString(new long[]{993563327995391542L, -4624564568221564571L, -6088248169448462047L}).toString(), new ObfuscatedString(new long[]{1033658397375967048L, -3360603525469897894L, -6321186127840796145L}).toString());
    public static final MediaType MICROSOFT_OUTLOOK = createConstant(new ObfuscatedString(new long[]{3238364477097797843L, -8453296090330663554L, -4999062123636726629L}).toString(), new ObfuscatedString(new long[]{-5279850360744844776L, -5070936591454146645L, -8442450820333495836L}).toString());
    public static final MediaType MICROSOFT_POWERPOINT = createConstant(new ObfuscatedString(new long[]{-2231709501760753793L, -3475837123400309248L, -7891265845913353445L}).toString(), new ObfuscatedString(new long[]{-596842534522140672L, 5870767825651279853L, -9066136454032401129L, -6828961443641499831L}).toString());
    public static final MediaType MICROSOFT_WORD = createConstant(new ObfuscatedString(new long[]{-1013779641191224899L, 2139086980137976890L, -6472373820043565421L}).toString(), new ObfuscatedString(new long[]{129609949098391617L, 1824362322283530102L}).toString());
    public static final MediaType MEDIA_PRESENTATION_DESCRIPTION = createConstant(new ObfuscatedString(new long[]{5077516060556455469L, -5656552399399685612L, 152683885841922430L}).toString(), new ObfuscatedString(new long[]{4423888080990913398L, -4969036870680467968L}).toString());
    public static final MediaType WASM_APPLICATION = createConstant(new ObfuscatedString(new long[]{-113311242171117518L, -8794025450607595822L, 5597035493047593398L}).toString(), new ObfuscatedString(new long[]{4472413468815442624L, -5470564522250082826L}).toString());
    public static final MediaType NACL_APPLICATION = createConstant(new ObfuscatedString(new long[]{-5842036594858413134L, -3688794654160500607L, 6203495662050900080L}).toString(), new ObfuscatedString(new long[]{4747421070538510536L, 2790169562167239584L}).toString());
    public static final MediaType NACL_PORTABLE_APPLICATION = createConstant(new ObfuscatedString(new long[]{8498487725716392498L, -3675782496056216273L, 1145891582912251031L}).toString(), new ObfuscatedString(new long[]{-8348050539901190296L, -6690887169144653152L}).toString());
    public static final MediaType OCTET_STREAM = createConstant(new ObfuscatedString(new long[]{-3335329133952491233L, 1592419606399668343L, -8027125245817383376L}).toString(), new ObfuscatedString(new long[]{-2380038782086071929L, -9206592278996658376L, -6472261856079361032L}).toString());
    public static final MediaType OGG_CONTAINER = createConstant(new ObfuscatedString(new long[]{-3422890973497734498L, 3790344456804359994L, -1129121440694555030L}).toString(), new ObfuscatedString(new long[]{-2673287337310281133L, -7627711348814477831L}).toString());
    public static final MediaType OOXML_DOCUMENT = createConstant(new ObfuscatedString(new long[]{-3595358844489409360L, 8612110199877043680L, 7891375645242576614L}).toString(), new ObfuscatedString(new long[]{-2208382314695588333L, 7818936571921618944L, 5204993649065458885L, 4705595418689470710L, -201050459741038750L, -8523422117851195660L, 1110407635394415240L, -970434076874130195L, -4079378580479001653L}).toString());
    public static final MediaType OOXML_PRESENTATION = createConstant(new ObfuscatedString(new long[]{1336845827108740483L, 4811054595535591674L, 3853999066185598052L}).toString(), new ObfuscatedString(new long[]{8756654660449576758L, 3150687938037344121L, 8735107330906767766L, -5327401472113984622L, -3522698603570267177L, -5567545769309503380L, -6382801134167551194L, 954116902328459023L, 4086686951434186784L}).toString());
    public static final MediaType OOXML_SHEET = createConstant(new ObfuscatedString(new long[]{-3367489091677278273L, -1975598262134862595L, -2887637143117250099L}).toString(), new ObfuscatedString(new long[]{-9145747303633508236L, 4496417165572939421L, -6688417612611904115L, -886600499050187765L, 2266670507354050570L, -4444760151467903974L, -5212290853668824159L, 9012432664569750358L}).toString());
    public static final MediaType OPENDOCUMENT_GRAPHICS = createConstant(new ObfuscatedString(new long[]{35803564252903114L, -8309218049488945468L, 9171718205374855445L}).toString(), new ObfuscatedString(new long[]{3272891211367554341L, -9106724218342294214L, 1558529367419418508L, -2628177826223045892L, -1146998348175550059L}).toString());
    public static final MediaType OPENDOCUMENT_PRESENTATION = createConstant(new ObfuscatedString(new long[]{-6753821558354656218L, 4134785380833437689L, 8894376498669946863L}).toString(), new ObfuscatedString(new long[]{-3670891790106204426L, -9159908892834202240L, 7477327119334868539L, -6982897578371847896L, -869912734765734526L, -5814325124615562003L}).toString());
    public static final MediaType OPENDOCUMENT_SPREADSHEET = createConstant(new ObfuscatedString(new long[]{876575717721292499L, 864105865789515590L, -2218666372311265082L}).toString(), new ObfuscatedString(new long[]{-434539646858282018L, 6830354600924169979L, 8758377939225467915L, -7434789048679516539L, 2063518016711811796L, -9110863017508511739L}).toString());
    public static final MediaType OPENDOCUMENT_TEXT = createConstant(new ObfuscatedString(new long[]{6244007866839013917L, -1838052943654728563L, 8872510199210964575L}).toString(), new ObfuscatedString(new long[]{390904048674858560L, 5635522292165180159L, 4077200525336588776L, -1467122642737690857L, -9177605313438530172L}).toString());
    public static final MediaType OPENSEARCH_DESCRIPTION_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{1708016700230798756L, 1608402400570510888L, -4271383781363440540L}).toString(), new ObfuscatedString(new long[]{9002052378580911408L, 7532822873318342717L, 957894021300810771L, -2106928508598978167L, 7394254823685069141L}).toString());
    public static final MediaType PDF = createConstant(new ObfuscatedString(new long[]{-2046906426822947884L, 8064045634050737612L, 1114428714063534524L}).toString(), new ObfuscatedString(new long[]{3755777538574129895L, 1514158648139266920L}).toString());
    public static final MediaType POSTSCRIPT = createConstant(new ObfuscatedString(new long[]{-5973036411113347655L, -3399071082150291326L, -2890649852019049405L}).toString(), new ObfuscatedString(new long[]{710334280539897214L, 1629279018439173863L, -4297471665854434634L}).toString());
    public static final MediaType PROTOBUF = createConstant(new ObfuscatedString(new long[]{314860244668515309L, 1586219157306683602L, -9007402568469801273L}).toString(), new ObfuscatedString(new long[]{-9055981045041531350L, 7688685916375424979L}).toString());
    public static final MediaType RDF_XML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-8712580184738540902L, -2625876159944803693L, 8132908932473916340L}).toString(), new ObfuscatedString(new long[]{-3920540600704358605L, 8770057761200384297L}).toString());
    public static final MediaType RTF_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{3505822387297743319L, 4471282076410756506L, 562129041075182767L}).toString(), new ObfuscatedString(new long[]{283050649780635018L, 3082491866100427592L}).toString());
    public static final MediaType SFNT = createConstant(new ObfuscatedString(new long[]{5180815945777745777L, 5259921568647004430L, 1267125300290882605L}).toString(), new ObfuscatedString(new long[]{8755276323482851348L, -8506454529508539765L, 4615950954366013985L}).toString());
    public static final MediaType SHOCKWAVE_FLASH = createConstant(new ObfuscatedString(new long[]{324342815165079441L, -9222416033446524490L, 7739485655929126031L}).toString(), new ObfuscatedString(new long[]{1886019335691880967L, 3131995588171552118L, 4952377521500435068L, -5433563152928193456L}).toString());
    public static final MediaType SKETCHUP = createConstant(new ObfuscatedString(new long[]{-82988219555920530L, 7019735714936722672L, -7403558392714539503L}).toString(), new ObfuscatedString(new long[]{8975568122611823494L, 4145899568373554608L, -6358190450137017245L}).toString());
    public static final MediaType SOAP_XML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-8953185709560276612L, -5204392015977349659L, 4424636078733451087L}).toString(), new ObfuscatedString(new long[]{8412144436168656132L, 2631080047726909051L}).toString());
    public static final MediaType TAR = createConstant(new ObfuscatedString(new long[]{6202177212519414335L, 4741392634999248812L, -3076166308496806869L}).toString(), new ObfuscatedString(new long[]{-4937130062522537072L, 4985058229340639659L}).toString());
    public static final MediaType WOFF = createConstant(new ObfuscatedString(new long[]{-5441577404262842393L, -80959966012836008L, -2424256649352670365L}).toString(), new ObfuscatedString(new long[]{-5543732853726031263L, -576382569724641875L, 5879261901543788434L}).toString());
    public static final MediaType WOFF2 = createConstant(new ObfuscatedString(new long[]{-664956928444725892L, -1112020221821739414L, 7654382735111021692L}).toString(), new ObfuscatedString(new long[]{-6137183957112346033L, -8895741140976340321L, -5928398915175318293L}).toString());
    public static final MediaType XHTML_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{-7233907636200779271L, 1407799697682036845L, -4733186530905764895L}).toString(), new ObfuscatedString(new long[]{7304880377233033430L, -3756842375070899058L, 4314325664819951461L}).toString());
    public static final MediaType XRD_UTF_8 = createConstantUtf8(new ObfuscatedString(new long[]{3813057449800574411L, -7320619068009235438L, -8551917484394377596L}).toString(), new ObfuscatedString(new long[]{5656841518119419764L, 721356582675103867L}).toString());
    public static final MediaType ZIP = createConstant(new ObfuscatedString(new long[]{5007379136680492712L, 2620284907535460228L, -6018899108775446800L}).toString(), new ObfuscatedString(new long[]{4349200366598287643L, 1611103770450320534L}).toString());
    public static final MediaType FONT_COLLECTION = createConstant(new ObfuscatedString(new long[]{-8223701837244684563L, 9061643337813840816L}).toString(), new ObfuscatedString(new long[]{-6276283122303796966L, -8667490103354779343L, -6806868332657832114L}).toString());
    public static final MediaType FONT_OTF = createConstant(new ObfuscatedString(new long[]{4498090231821560274L, -1131194208912600645L}).toString(), new ObfuscatedString(new long[]{-4257126402186856200L, 6465132163166056193L}).toString());
    public static final MediaType FONT_SFNT = createConstant(new ObfuscatedString(new long[]{-6964661646671025277L, -9178983210948852646L}).toString(), new ObfuscatedString(new long[]{-6090887173836957194L, -6765768980866733514L}).toString());
    public static final MediaType FONT_TTF = createConstant(new ObfuscatedString(new long[]{8457322664374030602L, 7518228001936592543L}).toString(), new ObfuscatedString(new long[]{3989597394647147547L, -4584236450510395312L}).toString());
    public static final MediaType FONT_WOFF = createConstant(new ObfuscatedString(new long[]{831496422530148422L, 7646007097259541041L}).toString(), new ObfuscatedString(new long[]{3019762543733258281L, -9029542453323493580L}).toString());
    public static final MediaType FONT_WOFF2 = createConstant(new ObfuscatedString(new long[]{3500523164620058734L, -8406803499404299367L}).toString(), new ObfuscatedString(new long[]{-7522742305680246797L, -747223692584228393L}).toString());
    private static final Joiner.MapJoiner PARAMETER_JOINER = Joiner.on(new ObfuscatedString(new long[]{-3466054332542410925L, 4910186011543429732L}).toString()).withKeyValueSeparator(new ObfuscatedString(new long[]{-7968672862064951594L, -5473533641073215766L}).toString());

    private MediaType(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.type = str;
        this.subtype = str2;
        this.parameters = immutableListMultimap;
    }

    private static MediaType addKnownType(MediaType mediaType) {
        KNOWN_TYPES.put(mediaType, mediaType);
        return mediaType;
    }

    private String computeToString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append('/');
        sb.append(this.subtype);
        if (!this.parameters.isEmpty()) {
            sb.append(new ObfuscatedString(new long[]{5322083321667047937L, -1675980726613697526L}).toString());
            PARAMETER_JOINER.appendTo(sb, Multimaps.transformValues((ListMultimap) this.parameters, (Function) new C0979x2a99d051(0)).entries());
        }
        return sb.toString();
    }

    public static MediaType create(String str, String str2) {
        MediaType create = create(str, str2, ImmutableListMultimap.of());
        create.parsedCharset = Optional.absent();
        return create;
    }

    public static MediaType createApplicationType(String str) {
        return create(new ObfuscatedString(new long[]{1792919966821011237L, 651252327446433119L, -3504225167883374666L}).toString(), str);
    }

    public static MediaType createAudioType(String str) {
        return create(new ObfuscatedString(new long[]{-1459046645290512853L, -5447761542850978143L}).toString(), str);
    }

    private static MediaType createConstant(String str, String str2) {
        MediaType addKnownType = addKnownType(new MediaType(str, str2, ImmutableListMultimap.of()));
        addKnownType.parsedCharset = Optional.absent();
        return addKnownType;
    }

    private static MediaType createConstantUtf8(String str, String str2) {
        MediaType addKnownType = addKnownType(new MediaType(str, str2, UTF_8_CONSTANT_PARAMETERS));
        addKnownType.parsedCharset = Optional.of(Charsets.UTF_8);
        return addKnownType;
    }

    public static MediaType createFontType(String str) {
        return create(new ObfuscatedString(new long[]{-3160617935648441235L, -4056413961396711873L}).toString(), str);
    }

    public static MediaType createImageType(String str) {
        return create(new ObfuscatedString(new long[]{2990411946060546367L, -2720580947504471514L}).toString(), str);
    }

    public static MediaType createTextType(String str) {
        return create(new ObfuscatedString(new long[]{8812397744092495181L, 3867817120074455253L}).toString(), str);
    }

    public static MediaType createVideoType(String str) {
        return create(new ObfuscatedString(new long[]{-7332507644828807229L, -2879062676083392588L}).toString(), str);
    }

    private static String escapeAndQuote(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append(Typography.quote);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\r' || charAt == '\\' || charAt == '\"') {
                sb.append('\\');
            }
            sb.append(charAt);
        }
        sb.append(Typography.quote);
        return sb.toString();
    }

    public static /* synthetic */ String lambda$computeToString$0(String str) {
        if (!TOKEN_MATCHER.matchesAllOf(str) || str.isEmpty()) {
            return escapeAndQuote(str);
        }
        return str;
    }

    private static String normalizeParameterValue(String str, String str2) {
        Preconditions.checkNotNull(str2);
        Preconditions.checkArgument(CharMatcher.ascii().matchesAllOf(str2), new ObfuscatedString(new long[]{4517505752900434818L, 3811466452259391714L, 667479152864745145L, 6947268872408571056L, -2616651404697191226L, -1979762914595505902L}).toString(), str2);
        if (new ObfuscatedString(new long[]{-2400826542679342102L, 6464478216913386335L}).toString().equals(str)) {
            return Ascii.toLowerCase(str2);
        }
        return str2;
    }

    private static String normalizeToken(String str) {
        Preconditions.checkArgument(TOKEN_MATCHER.matchesAllOf(str));
        Preconditions.checkArgument(!str.isEmpty());
        return Ascii.toLowerCase(str);
    }

    private Map<String, ImmutableMultiset<String>> parametersAsMap() {
        return Maps.transformValues(this.parameters.asMap(), new C0979x2a99d051(1));
    }

    @CanIgnoreReturnValue
    public static MediaType parse(String str) {
        String consumeToken;
        Preconditions.checkNotNull(str);
        Tokenizer tokenizer = new Tokenizer(str);
        try {
            CharMatcher charMatcher = TOKEN_MATCHER;
            String consumeToken2 = tokenizer.consumeToken(charMatcher);
            tokenizer.consumeCharacter('/');
            String consumeToken3 = tokenizer.consumeToken(charMatcher);
            ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
            while (tokenizer.hasMore()) {
                CharMatcher charMatcher2 = LINEAR_WHITE_SPACE;
                tokenizer.consumeTokenIfPresent(charMatcher2);
                tokenizer.consumeCharacter(';');
                tokenizer.consumeTokenIfPresent(charMatcher2);
                CharMatcher charMatcher3 = TOKEN_MATCHER;
                String consumeToken4 = tokenizer.consumeToken(charMatcher3);
                tokenizer.consumeCharacter('=');
                if ('\"' == tokenizer.previewChar()) {
                    tokenizer.consumeCharacter(Typography.quote);
                    StringBuilder sb = new StringBuilder();
                    while ('\"' != tokenizer.previewChar()) {
                        if ('\\' == tokenizer.previewChar()) {
                            tokenizer.consumeCharacter('\\');
                            sb.append(tokenizer.consumeCharacter(CharMatcher.ascii()));
                        } else {
                            sb.append(tokenizer.consumeToken(QUOTED_TEXT_MATCHER));
                        }
                    }
                    consumeToken = sb.toString();
                    tokenizer.consumeCharacter(Typography.quote);
                } else {
                    consumeToken = tokenizer.consumeToken(charMatcher3);
                }
                builder.put((ImmutableListMultimap.Builder) consumeToken4, consumeToken);
            }
            return create(consumeToken2, consumeToken3, builder.build());
        } catch (IllegalStateException e) {
            StringBuilder sb2 = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(18, str));
            sb2.append(new ObfuscatedString(new long[]{415996515305824566L, 8291105196996532953L, -3948249017698630454L, -7100976071314307371L}).toString());
            sb2.append(str);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6291279563159386530L, 2008922596103673946L}), sb2), e);
        }
    }

    public Optional<Charset> charset() {
        Optional<Charset> optional = this.parsedCharset;
        if (optional == null) {
            optional = Optional.absent();
            UnmodifiableIterator<String> it = this.parameters.get((ImmutableListMultimap<String, String>) new ObfuscatedString(new long[]{-2728021598281821953L, -2183726604392473946L}).toString()).iterator();
            String str = null;
            while (it.hasNext()) {
                String next = it.next();
                if (str == null) {
                    optional = Optional.of(Charset.forName(next));
                    str = next;
                } else if (!str.equals(next)) {
                    StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(str.length() + 35, next));
                    sb.append(new ObfuscatedString(new long[]{-3940176212377347305L, 6552963617402216635L, 6383626873029842914L, -1139688707182623103L, 7122471504285351376L, -8829922571554796326L}).toString());
                    sb.append(str);
                    throw new IllegalStateException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2967167671994385149L, 4580920697505069795L}), sb, next));
                }
            }
            this.parsedCharset = optional;
        }
        return optional;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MediaType)) {
            return false;
        }
        MediaType mediaType = (MediaType) obj;
        if (this.type.equals(mediaType.type) && this.subtype.equals(mediaType.subtype) && parametersAsMap().equals(mediaType.parametersAsMap())) {
            return true;
        }
        return false;
    }

    public boolean hasWildcard() {
        if (!new ObfuscatedString(new long[]{-7410787431378812433L, 5711698001715237337L}).toString().equals(this.type) && !new ObfuscatedString(new long[]{-7272105206545505292L, 7052527996613374858L}).toString().equals(this.subtype)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i == 0) {
            int hashCode = Objects.hashCode(this.type, this.subtype, parametersAsMap());
            this.hashCode = hashCode;
            return hashCode;
        }
        return i;
    }

    public boolean is(MediaType mediaType) {
        if ((mediaType.type.equals(new ObfuscatedString(new long[]{1264196280157483750L, -5278451968885948292L}).toString()) || mediaType.type.equals(this.type)) && ((mediaType.subtype.equals(new ObfuscatedString(new long[]{-8446233464395324098L, -7097291731374253540L}).toString()) || mediaType.subtype.equals(this.subtype)) && this.parameters.entries().containsAll(mediaType.parameters.entries()))) {
            return true;
        }
        return false;
    }

    public ImmutableListMultimap<String, String> parameters() {
        return this.parameters;
    }

    public String subtype() {
        return this.subtype;
    }

    public String toString() {
        String str = this.toString;
        if (str == null) {
            String computeToString = computeToString();
            this.toString = computeToString;
            return computeToString;
        }
        return str;
    }

    public String type() {
        return this.type;
    }

    public MediaType withCharset(Charset charset) {
        Preconditions.checkNotNull(charset);
        MediaType withParameter = withParameter(new ObfuscatedString(new long[]{-8739296856372074308L, 7773272394898239112L}).toString(), charset.name());
        withParameter.parsedCharset = Optional.of(charset);
        return withParameter;
    }

    public MediaType withParameter(String str, String str2) {
        return withParameters(str, ImmutableSet.of(str2));
    }

    public MediaType withParameters(Multimap<String, String> multimap) {
        return create(this.type, this.subtype, multimap);
    }

    public MediaType withoutParameters() {
        if (this.parameters.isEmpty()) {
            return this;
        }
        return create(this.type, this.subtype);
    }

    public MediaType withParameters(String str, Iterable<String> iterable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(iterable);
        String normalizeToken = normalizeToken(str);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        UnmodifiableIterator<Map.Entry<String, String>> it = this.parameters.entries().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            if (!normalizeToken.equals(key)) {
                builder.put((ImmutableListMultimap.Builder) key, next.getValue());
            }
        }
        Iterator<String> it2 = iterable.iterator();
        while (it2.hasNext()) {
            builder.put((ImmutableListMultimap.Builder) normalizeToken, normalizeParameterValue(normalizeToken, it2.next()));
        }
        MediaType mediaType = new MediaType(this.type, this.subtype, builder.build());
        if (!normalizeToken.equals(new ObfuscatedString(new long[]{2459221164081199121L, -7181779572701002380L}).toString())) {
            mediaType.parsedCharset = this.parsedCharset;
        }
        return (MediaType) MoreObjects.firstNonNull(KNOWN_TYPES.get(mediaType), mediaType);
    }

    private static MediaType create(String str, String str2, Multimap<String, String> multimap) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(multimap);
        String normalizeToken = normalizeToken(str);
        String normalizeToken2 = normalizeToken(str2);
        Preconditions.checkArgument(!new ObfuscatedString(new long[]{297147037655239691L, -4450930824809820312L}).toString().equals(normalizeToken) || new ObfuscatedString(new long[]{-7882821699375492542L, -2474372087183136804L}).toString().equals(normalizeToken2), new ObfuscatedString(new long[]{-352533139390147146L, 7075215624389400892L, -4032494898286645588L, 4717767642435304790L, 612404384068842644L, 898087775108226054L, -5986064670104985916L, -5589842355280329473L, 8007860129985682902L}).toString());
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        for (Map.Entry<String, String> entry : multimap.entries()) {
            String normalizeToken3 = normalizeToken(entry.getKey());
            builder.put((ImmutableListMultimap.Builder) normalizeToken3, normalizeParameterValue(normalizeToken3, entry.getValue()));
        }
        MediaType mediaType = new MediaType(normalizeToken, normalizeToken2, builder.build());
        return (MediaType) MoreObjects.firstNonNull(KNOWN_TYPES.get(mediaType), mediaType);
    }

    /* loaded from: classes2.dex */
    public static final class Tokenizer {
        final String input;
        int position = 0;

        public Tokenizer(String str) {
            this.input = str;
        }

        public char consumeCharacter(CharMatcher charMatcher) {
            Preconditions.checkState(hasMore());
            char previewChar = previewChar();
            Preconditions.checkState(charMatcher.matches(previewChar));
            this.position++;
            return previewChar;
        }

        public String consumeToken(CharMatcher charMatcher) {
            boolean z;
            int i = this.position;
            String consumeTokenIfPresent = consumeTokenIfPresent(charMatcher);
            if (this.position != i) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            return consumeTokenIfPresent;
        }

        @CanIgnoreReturnValue
        public String consumeTokenIfPresent(CharMatcher charMatcher) {
            Preconditions.checkState(hasMore());
            int i = this.position;
            this.position = charMatcher.negate().indexIn(this.input, i);
            if (hasMore()) {
                return this.input.substring(i, this.position);
            }
            return this.input.substring(i);
        }

        public boolean hasMore() {
            int i = this.position;
            if (i >= 0 && i < this.input.length()) {
                return true;
            }
            return false;
        }

        public char previewChar() {
            Preconditions.checkState(hasMore());
            return this.input.charAt(this.position);
        }

        @CanIgnoreReturnValue
        public char consumeCharacter(char c) {
            Preconditions.checkState(hasMore());
            Preconditions.checkState(previewChar() == c);
            this.position++;
            return c;
        }
    }
}
