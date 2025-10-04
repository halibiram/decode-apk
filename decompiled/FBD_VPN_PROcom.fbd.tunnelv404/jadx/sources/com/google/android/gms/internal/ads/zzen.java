package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzen {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{1117335352060220067L, -2283682222107174767L, 4038691951255268014L, -5304555507646814165L, 5938093495961798840L, -7579573857998473434L}).toString());
    private static final Pattern zzb = Pattern.compile(new ObfuscatedString(new long[]{1276152088019645940L, -4296973911278619418L, -6177646951376874020L, -6617690406535225397L, -3819520525264355025L, -4522335343949136211L, -4469324702297487296L, 3862476988358928554L}).toString());
    private static final Pattern zzc = Pattern.compile(new ObfuscatedString(new long[]{-6808925894069610648L, 4132503369961892457L, -8610077399292387250L, 8407069960697979570L, 5119338351190563296L, -7053105715835528640L, -6389998563227365545L, 8058007286710454832L}).toString());
    private static final Map zzd;

    static {
        HashMap hashMap = new HashMap();
        zzd = hashMap;
        hashMap.put(new ObfuscatedString(new long[]{-4315098753379499868L, 9111280888361578429L, -4684064466325735584L}).toString(), -984833);
        hashMap.put(new ObfuscatedString(new long[]{-3046465940204657045L, -2098944789597424195L, -8289154824419591351L}).toString(), -332841);
        hashMap.put(new ObfuscatedString(new long[]{914221002655352960L, 5023460131869405990L}).toString(), -16711681);
        hashMap.put(new ObfuscatedString(new long[]{-8677462453616549532L, 4350309318013115485L, -7540382269549092383L}).toString(), -8388652);
        hashMap.put(new ObfuscatedString(new long[]{-2203862477040704032L, -3738075337916776373L}).toString(), -983041);
        hashMap.put(new ObfuscatedString(new long[]{10661288528989288L, -8732451877220194853L}).toString(), -657956);
        hashMap.put(new ObfuscatedString(new long[]{-8017028821577251589L, -5078856314772051784L}).toString(), -6972);
        hashMap.put(new ObfuscatedString(new long[]{-6998866960078333095L, 7668231075304137591L}).toString(), Integer.valueOf(ViewCompat.MEASURED_STATE_MASK));
        hashMap.put(new ObfuscatedString(new long[]{7511508064986664423L, 8949736158145353962L, -6092896652590168910L}).toString(), -5171);
        hashMap.put(new ObfuscatedString(new long[]{4956765379078077484L, -3301045008142909550L}).toString(), -16776961);
        hashMap.put(new ObfuscatedString(new long[]{1976139361350169269L, 6246210799785805796L, -5089076995415431626L}).toString(), -7722014);
        hashMap.put(new ObfuscatedString(new long[]{4395235928173094600L, -616711576112723418L}).toString(), -5952982);
        hashMap.put(new ObfuscatedString(new long[]{1541079792210159537L, 5817654460247806438L, 3621466668579957442L}).toString(), -2180985);
        hashMap.put(new ObfuscatedString(new long[]{-3932832284476635541L, -4564703040325497272L, 5915377203933859171L}).toString(), -10510688);
        hashMap.put(new ObfuscatedString(new long[]{-943278877242021590L, 8638940931459520904L, -1933882311996076718L}).toString(), -8388864);
        hashMap.put(new ObfuscatedString(new long[]{-7528163040075810940L, 2384962996625628493L, -2527056711678070428L}).toString(), -2987746);
        hashMap.put(new ObfuscatedString(new long[]{285613007859161942L, 991464350200889376L}).toString(), -32944);
        hashMap.put(new ObfuscatedString(new long[]{6807610624057747087L, 2607221886869001935L, 8113642404615603865L}).toString(), -10185235);
        hashMap.put(new ObfuscatedString(new long[]{6823422714478678750L, 2025551782689946987L}).toString(), -1828);
        hashMap.put(new ObfuscatedString(new long[]{-5562914576964099129L, 3572718635834059428L}).toString(), -2354116);
        hashMap.put(new ObfuscatedString(new long[]{3590382420741724513L, -3477700669150001875L}).toString(), -16711681);
        hashMap.put(new ObfuscatedString(new long[]{1595491773938788749L, 8119760419121515288L}).toString(), -16777077);
        hashMap.put(new ObfuscatedString(new long[]{8425859373222289129L, -8789082224647513747L}).toString(), -16741493);
        hashMap.put(new ObfuscatedString(new long[]{7197555859070519304L, -2147308900129376779L, 2623502585903366319L}).toString(), -4684277);
        hashMap.put(new ObfuscatedString(new long[]{-840247946650230096L, -2620240849109348954L}).toString(), -5658199);
        hashMap.put(new ObfuscatedString(new long[]{691792327150896407L, -1528485147625835268L, -9143206414603952758L}).toString(), -16751616);
        hashMap.put(new ObfuscatedString(new long[]{-8348081066452230590L, 7411565063750725222L}).toString(), -5658199);
        hashMap.put(new ObfuscatedString(new long[]{-8437176552753260059L, -5812376181847183907L, -7425532457443573919L}).toString(), -4343957);
        hashMap.put(new ObfuscatedString(new long[]{-453817558001707372L, 6251392723783417619L, -1781515009420083300L}).toString(), -7667573);
        hashMap.put(new ObfuscatedString(new long[]{973029449644818699L, 1121244353507154258L, -1781481226747792471L}).toString(), -11179217);
        hashMap.put(new ObfuscatedString(new long[]{7070038758806639406L, 2383127388308160225L, -8694796792360744446L}).toString(), -29696);
        hashMap.put(new ObfuscatedString(new long[]{4558580369123959020L, 1662037545644200364L, 8471294548257915331L}).toString(), -6737204);
        hashMap.put(new ObfuscatedString(new long[]{3720193368617721534L, 7934769004059384237L}).toString(), -7667712);
        hashMap.put(new ObfuscatedString(new long[]{8408473600340911585L, -3627177769498512781L, -6370442960926158051L}).toString(), -1468806);
        hashMap.put(new ObfuscatedString(new long[]{-5987091864500313786L, -1675733120542352117L, 5155923423819416947L}).toString(), -7357297);
        hashMap.put(new ObfuscatedString(new long[]{-557383781207721189L, 814417833146894334L, -1840551680788209596L}).toString(), -12042869);
        hashMap.put(new ObfuscatedString(new long[]{7670761578416907460L, -6164929974595888887L, -5084150884878624270L}).toString(), -13676721);
        hashMap.put(new ObfuscatedString(new long[]{-819984952004882045L, 8770626176018366957L, -184251750971668122L}).toString(), -13676721);
        hashMap.put(new ObfuscatedString(new long[]{3434393189965862157L, -6801140412998934147L, -3551703271405520091L}).toString(), -16724271);
        hashMap.put(new ObfuscatedString(new long[]{6069547421860431785L, -1226606819483849003L, 542780652855617229L}).toString(), -7077677);
        hashMap.put(new ObfuscatedString(new long[]{-7547057939037679498L, -1595730831713102283L}).toString(), -60269);
        hashMap.put(new ObfuscatedString(new long[]{-5981969046174171355L, -7332996826744274084L, 3791324802404296623L}).toString(), -16728065);
        hashMap.put(new ObfuscatedString(new long[]{5163222642099904346L, -363460583142453636L}).toString(), -9868951);
        hashMap.put(new ObfuscatedString(new long[]{3444658829729052613L, -1774010944164972952L}).toString(), -9868951);
        hashMap.put(new ObfuscatedString(new long[]{8870946361281422554L, 1259628339606442993L, -4081159377475490471L}).toString(), -14774017);
        hashMap.put(new ObfuscatedString(new long[]{-7052311812283903063L, -8066266514497437391L, -7662994372000682211L}).toString(), -5103070);
        hashMap.put(new ObfuscatedString(new long[]{-3135540149472548062L, 167358700891343546L, -5128499996808179615L}).toString(), -1296);
        hashMap.put(new ObfuscatedString(new long[]{8658613095752078387L, 4373969487832727907L, -6669955644185416169L}).toString(), -14513374);
        hashMap.put(new ObfuscatedString(new long[]{-2195036649792270600L, 8541182368280204868L}).toString(), -65281);
        hashMap.put(new ObfuscatedString(new long[]{-3280522374368844405L, 58416567162175288L, -1153698575952771079L}).toString(), -2302756);
        hashMap.put(new ObfuscatedString(new long[]{-3839461101068346554L, -3113556791313022842L, 4296871840544893120L}).toString(), -460545);
        hashMap.put(new ObfuscatedString(new long[]{9129204053666538078L, 5982157956354576567L}).toString(), -10496);
        hashMap.put(new ObfuscatedString(new long[]{-3456183730900943823L, -5661619783276366686L, -5798658654077546827L}).toString(), -2448096);
        hashMap.put(new ObfuscatedString(new long[]{-5543101430380757553L, -5810733890848393515L}).toString(), -8355712);
        hashMap.put(new ObfuscatedString(new long[]{-3963169460412062560L, 7583528678286148846L}).toString(), -16744448);
        hashMap.put(new ObfuscatedString(new long[]{-8502392696927025572L, 2343024415661225254L, -867476906434255461L}).toString(), -5374161);
        hashMap.put(new ObfuscatedString(new long[]{5080039986310600019L, -1033954701921861994L}).toString(), -8355712);
        hashMap.put(new ObfuscatedString(new long[]{-1675858003853787433L, 8797231062244963393L}).toString(), -983056);
        hashMap.put(new ObfuscatedString(new long[]{2223133407486399373L, -8973910560506526679L}).toString(), -38476);
        hashMap.put(new ObfuscatedString(new long[]{-7074131075761833353L, 1772728041030849334L, 3761879746635567141L}).toString(), -3318692);
        hashMap.put(new ObfuscatedString(new long[]{-677375108871218082L, 3913391962231022521L}).toString(), -11861886);
        hashMap.put(new ObfuscatedString(new long[]{-2232875503405176562L, 4887145516519484663L}).toString(), -16);
        hashMap.put(new ObfuscatedString(new long[]{-2811553078166929337L, -8409390561759463252L}).toString(), -989556);
        hashMap.put(new ObfuscatedString(new long[]{4058560032854548840L, 5781795768304445013L}).toString(), -1644806);
        hashMap.put(new ObfuscatedString(new long[]{6650397731733880188L, -1746878625757141200L, -1038564494745969417L}).toString(), -3851);
        hashMap.put(new ObfuscatedString(new long[]{3621601852830434097L, 1336139764865830452L, -1696271798736110492L}).toString(), -8586240);
        hashMap.put(new ObfuscatedString(new long[]{8675749879080368985L, 6034443435315415269L, -3031047449568397032L}).toString(), -1331);
        hashMap.put(new ObfuscatedString(new long[]{-2791835559040385780L, 5450539288062355953L, -2462101651896242909L}).toString(), -5383962);
        hashMap.put(new ObfuscatedString(new long[]{-920464307953754402L, -5980342078763494589L, 6369739206401241373L}).toString(), -1015680);
        hashMap.put(new ObfuscatedString(new long[]{-8551349164386100106L, -817810159848925040L, 2843940617135146480L}).toString(), -2031617);
        hashMap.put(new ObfuscatedString(new long[]{5449584285002506559L, -6386825894893591336L, -9220074006467652855L, -4268151619430376046L}).toString(), -329006);
        hashMap.put(new ObfuscatedString(new long[]{6241619212946570642L, -1901860080106159953L, 2565769966618601817L}).toString(), -2894893);
        hashMap.put(new ObfuscatedString(new long[]{-3290061439406653884L, -8629897261492107881L, 3505726432777765440L}).toString(), -7278960);
        hashMap.put(new ObfuscatedString(new long[]{4684927272988979429L, -6972135529017771093L, -8401293759352166186L}).toString(), -2894893);
        hashMap.put(new ObfuscatedString(new long[]{6749017343582629066L, 6503397620693249914L, -5396678361615172663L}).toString(), -18751);
        hashMap.put(new ObfuscatedString(new long[]{-1226984774274181432L, 2833098129805131394L, 7394787935728430208L}).toString(), -24454);
        hashMap.put(new ObfuscatedString(new long[]{-3523284363168072408L, 5284404730698624769L, -4427836147282602575L}).toString(), -14634326);
        hashMap.put(new ObfuscatedString(new long[]{-9217928078547584082L, 3548811895590335370L, -4374907586708427042L}).toString(), -7876870);
        hashMap.put(new ObfuscatedString(new long[]{776932678079440741L, 7923658621041973662L, -2800151539744145176L}).toString(), -8943463);
        hashMap.put(new ObfuscatedString(new long[]{1338425397545670885L, 1142921259111730137L, 555645497084011772L}).toString(), -8943463);
        hashMap.put(new ObfuscatedString(new long[]{-8386428113929042805L, 9151832415234006744L, 8619775741788014721L}).toString(), -5192482);
        hashMap.put(new ObfuscatedString(new long[]{-2862068752718808517L, 8712140061603871990L, 1260084727649998210L}).toString(), -32);
        hashMap.put(new ObfuscatedString(new long[]{-2272482117806516477L, -5476066576173551362L}).toString(), -16711936);
        hashMap.put(new ObfuscatedString(new long[]{5939787813825804570L, -9124461403247690412L, -7661378295347619027L}).toString(), -13447886);
        hashMap.put(new ObfuscatedString(new long[]{3038413238426245732L, 5003670173530202686L}).toString(), -331546);
        hashMap.put(new ObfuscatedString(new long[]{-7149144025196049926L, -4546481494275598977L}).toString(), -65281);
        hashMap.put(new ObfuscatedString(new long[]{-6015152273052813996L, -6958444123501256428L}).toString(), -8388608);
        hashMap.put(new ObfuscatedString(new long[]{-2414778955661933541L, 5258210905775613165L, 5494323692586960778L}).toString(), -10039894);
        hashMap.put(new ObfuscatedString(new long[]{-1814187743841218998L, -1362565714350268759L, -7199805257707210031L}).toString(), -16777011);
        hashMap.put(new ObfuscatedString(new long[]{-7666514340935946891L, 7150086688331670634L, 8502093058580606556L}).toString(), -4565549);
        hashMap.put(new ObfuscatedString(new long[]{4831472939011321100L, 3934889514452382429L, -4505226163007426910L}).toString(), -7114533);
        hashMap.put(new ObfuscatedString(new long[]{-1780843506270764324L, 8089113630541734184L, -5310023034043529811L}).toString(), -12799119);
        hashMap.put(new ObfuscatedString(new long[]{6309422791231289570L, 3431554348835443843L, -2789436780977311917L}).toString(), -8689426);
        hashMap.put(new ObfuscatedString(new long[]{4653318413408610109L, -5524092753015726L, -3165203774956036743L, -6315666123325837830L}).toString(), -16713062);
        hashMap.put(new ObfuscatedString(new long[]{3707372788972602803L, -2815069782018642167L, -5172609822844320978L}).toString(), -12004916);
        hashMap.put(new ObfuscatedString(new long[]{-8473498401316036907L, 191808094272823812L, 7062682039941109035L}).toString(), -3730043);
        hashMap.put(new ObfuscatedString(new long[]{-62228068413673715L, -8057519788774747398L, 8336993769652932202L}).toString(), -15132304);
        hashMap.put(new ObfuscatedString(new long[]{7298283606524285259L, 1802085893950977162L, 5182126160013777815L}).toString(), -655366);
        hashMap.put(new ObfuscatedString(new long[]{1914152372034801339L, 6725703268226604377L, 7726117802246454543L}).toString(), -6943);
        hashMap.put(new ObfuscatedString(new long[]{539016856264324386L, 7438423668145945195L}).toString(), -6987);
        hashMap.put(new ObfuscatedString(new long[]{524555932177990916L, -8684343068299391454L, -5259720339398817485L}).toString(), -8531);
        hashMap.put(new ObfuscatedString(new long[]{-2524582959781050247L, 3489980276272272009L}).toString(), -16777088);
        hashMap.put(new ObfuscatedString(new long[]{-5458042039523090689L, -6460672638718648642L}).toString(), -133658);
        hashMap.put(new ObfuscatedString(new long[]{-4686896877140231635L, -5910111820365711954L}).toString(), -8355840);
        hashMap.put(new ObfuscatedString(new long[]{6621386136371454532L, -5192640182962158083L, -3732580844875061441L}).toString(), -9728477);
        hashMap.put(new ObfuscatedString(new long[]{3775938605712029394L, 9210267633515711051L}).toString(), -23296);
        hashMap.put(new ObfuscatedString(new long[]{5403587549647446421L, 3298287404844816819L, -4828326675445424861L}).toString(), -47872);
        hashMap.put(new ObfuscatedString(new long[]{-1027849241820866139L, -2906258748141123110L}).toString(), -2461482);
        hashMap.put(new ObfuscatedString(new long[]{-5358545217084037599L, -2708341938906812193L, -6557673470902128586L}).toString(), -1120086);
        hashMap.put(new ObfuscatedString(new long[]{-1443585572696169973L, 5447326605567179271L, -167865366036497596L}).toString(), -6751336);
        hashMap.put(new ObfuscatedString(new long[]{-4630303385103130801L, -779620303698457807L, 8078904633976365986L}).toString(), -5247250);
        hashMap.put(new ObfuscatedString(new long[]{-3632989607632023011L, 4791006103489866968L, -2920889185971897169L}).toString(), -2396013);
        hashMap.put(new ObfuscatedString(new long[]{8717360914636824081L, 4393481410429584327L, -5769608944493708383L}).toString(), -4139);
        hashMap.put(new ObfuscatedString(new long[]{7342447072779375977L, -3497242420003110070L, 3943193944368195760L}).toString(), -9543);
        hashMap.put(new ObfuscatedString(new long[]{6517613300084865103L, -4211148602512564917L}).toString(), -3308225);
        hashMap.put(new ObfuscatedString(new long[]{5894305040682658175L, -198683395121438556L}).toString(), -16181);
        hashMap.put(new ObfuscatedString(new long[]{5762678152405692844L, 3240091729108805550L}).toString(), -2252579);
        hashMap.put(new ObfuscatedString(new long[]{3314444295555385360L, -3026886501820218326L, -3247248152772471666L}).toString(), -5185306);
        hashMap.put(new ObfuscatedString(new long[]{-8994138917560058784L, 8967937989111103049L}).toString(), -8388480);
        hashMap.put(new ObfuscatedString(new long[]{-8510243295623425904L, -3777255290725448413L, -6289232054411546166L}).toString(), -10079335);
        hashMap.put(new ObfuscatedString(new long[]{-6556488287829541548L, 3907007910623574263L}).toString(), Integer.valueOf(SupportMenu.CATEGORY_MASK));
        hashMap.put(new ObfuscatedString(new long[]{3588632211880480667L, -7069535562376918196L, 4814491456300031725L}).toString(), -4419697);
        hashMap.put(new ObfuscatedString(new long[]{3822818725758851021L, -8332103557119227682L, -2396697393644971038L}).toString(), -12490271);
        hashMap.put(new ObfuscatedString(new long[]{4818221162863154104L, 6845626224374114507L, -9072871825354577165L}).toString(), -7650029);
        hashMap.put(new ObfuscatedString(new long[]{-4096511487667004499L, 6241213505553375995L}).toString(), -360334);
        hashMap.put(new ObfuscatedString(new long[]{182033588940498360L, -2066310108748449610L, -5562410761020319062L}).toString(), -744352);
        hashMap.put(new ObfuscatedString(new long[]{6584044171535692388L, 8053323138776751458L}).toString(), -13726889);
        hashMap.put(new ObfuscatedString(new long[]{7894963040012883276L, -6454655211645336389L}).toString(), -2578);
        hashMap.put(new ObfuscatedString(new long[]{1052322484154810406L, -7355685905243026470L}).toString(), -6270419);
        hashMap.put(new ObfuscatedString(new long[]{1576681647082133245L, -4749792969233235665L}).toString(), -4144960);
        hashMap.put(new ObfuscatedString(new long[]{2768578823992842745L, -8225962080441315798L}).toString(), -7876885);
        hashMap.put(new ObfuscatedString(new long[]{-4115803707692716109L, 4073103828030136113L, 1648400125034535653L}).toString(), -9807155);
        hashMap.put(new ObfuscatedString(new long[]{6461134175757137336L, -3698107086788768336L, -1316371365284355324L}).toString(), -9404272);
        hashMap.put(new ObfuscatedString(new long[]{5769554102513946844L, -5942069216615255437L, 6083124509029515160L}).toString(), -9404272);
        hashMap.put(new ObfuscatedString(new long[]{7646621972667266416L, -8294747926236616033L}).toString(), -1286);
        hashMap.put(new ObfuscatedString(new long[]{8801862019917694305L, 8599520366822185774L, 1195127375738199418L}).toString(), -16711809);
        hashMap.put(new ObfuscatedString(new long[]{-4027107725100375148L, -420689697838969068L, 1178759404587675215L}).toString(), -12156236);
        hashMap.put(new ObfuscatedString(new long[]{4361032159264581143L, -456029128831258330L}).toString(), -2968436);
        hashMap.put(new ObfuscatedString(new long[]{8468873353358757106L, 6759883157694123078L}).toString(), -16744320);
        hashMap.put(new ObfuscatedString(new long[]{-6770601376132428065L, 8269294464223029639L}).toString(), -2572328);
        hashMap.put(new ObfuscatedString(new long[]{-6904749976426424027L, 4144596707017087932L}).toString(), -40121);
        hashMap.put(new ObfuscatedString(new long[]{-713342942587157213L, 2786331256595045606L, 2490580919551426629L}).toString(), 0);
        hashMap.put(new ObfuscatedString(new long[]{751539793929398796L, -6287286052243438202L, 528754558534888252L}).toString(), -12525360);
        hashMap.put(new ObfuscatedString(new long[]{-8278116227261093621L, 7470676370307403446L}).toString(), -1146130);
        hashMap.put(new ObfuscatedString(new long[]{-4483943722718528391L, 6835485966525808402L}).toString(), -663885);
        hashMap.put(new ObfuscatedString(new long[]{5668343357201296913L, -1912391989489141634L}).toString(), -1);
        hashMap.put(new ObfuscatedString(new long[]{-6659457714631128579L, -301583849244933747L, -8046317587355792276L}).toString(), -657931);
        hashMap.put(new ObfuscatedString(new long[]{-8467866092099612919L, 2153957758273459786L}).toString(), -256);
        hashMap.put(new ObfuscatedString(new long[]{-3298371188490276671L, 4663571370092018920L, 385728276794709030L}).toString(), -6632142);
    }

    @ColorInt
    public static int zza(String str) {
        return zzc(str, true);
    }

    @ColorInt
    public static int zzb(String str) {
        return zzc(str, false);
    }

    @ColorInt
    private static int zzc(String str, boolean z) {
        Pattern pattern;
        int parseInt;
        zzek.zzd(!TextUtils.isEmpty(str));
        String replace = str.replace(new ObfuscatedString(new long[]{2357860890403849485L, 3733687846489844784L}).toString(), new ObfuscatedString(new long[]{4768841576470987716L}).toString());
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                return (-16777216) | parseLong;
            }
            if (replace.length() == 9) {
                return ((parseLong & 255) << 24) | (parseLong >>> 8);
            }
            throw new IllegalArgumentException();
        }
        if (replace.startsWith(new ObfuscatedString(new long[]{-9131165330685950812L, 2511008767247098334L}).toString())) {
            if (z) {
                pattern = zzc;
            } else {
                pattern = zzb;
            }
            Matcher matcher = pattern.matcher(replace);
            if (matcher.matches()) {
                if (z) {
                    String group = matcher.group(4);
                    group.getClass();
                    parseInt = (int) (Float.parseFloat(group) * 255.0f);
                } else {
                    String group2 = matcher.group(4);
                    group2.getClass();
                    parseInt = Integer.parseInt(group2, 10);
                }
                String group3 = matcher.group(1);
                group3.getClass();
                int parseInt2 = Integer.parseInt(group3, 10);
                String group4 = matcher.group(2);
                group4.getClass();
                int parseInt3 = Integer.parseInt(group4, 10);
                String group5 = matcher.group(3);
                group5.getClass();
                return Color.argb(parseInt, parseInt2, parseInt3, Integer.parseInt(group5, 10));
            }
        } else if (replace.startsWith(new ObfuscatedString(new long[]{7656604856249840167L, 3811976295179747980L}).toString())) {
            Matcher matcher2 = zza.matcher(replace);
            if (matcher2.matches()) {
                String group6 = matcher2.group(1);
                group6.getClass();
                int parseInt4 = Integer.parseInt(group6, 10);
                String group7 = matcher2.group(2);
                group7.getClass();
                int parseInt5 = Integer.parseInt(group7, 10);
                String group8 = matcher2.group(3);
                group8.getClass();
                return Color.rgb(parseInt4, parseInt5, Integer.parseInt(group8, 10));
            }
        } else {
            Integer num = (Integer) zzd.get(zzfwk.zza(replace));
            if (num != null) {
                return num.intValue();
            }
        }
        throw new IllegalArgumentException();
    }
}
