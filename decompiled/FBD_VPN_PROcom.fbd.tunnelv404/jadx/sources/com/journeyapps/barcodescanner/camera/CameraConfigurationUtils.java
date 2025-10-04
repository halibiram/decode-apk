package com.journeyapps.barcodescanner.camera;

import android.annotation.TargetApi;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class CameraConfigurationUtils {
    private static final int AREA_PER_1000 = 400;
    private static final float MAX_EXPOSURE_COMPENSATION = 1.5f;
    private static final int MAX_FPS = 20;
    private static final float MIN_EXPOSURE_COMPENSATION = 0.0f;
    private static final int MIN_FPS = 10;
    private static final String TAG = new ObfuscatedString(new long[]{1192832000811069672L, 8163442803045005392L, 9073707861068800894L, 3237415274505018511L}).toString();
    private static final Pattern SEMICOLON = Pattern.compile(new ObfuscatedString(new long[]{-3205972739396099941L, -2783782520472507414L}).toString());

    private CameraConfigurationUtils() {
    }

    @TargetApi(15)
    private static List<Camera.Area> buildMiddleArea(int i) {
        int i2 = -i;
        return Collections.singletonList(new Camera.Area(new Rect(i2, i2, i, i), 1));
    }

    public static String collectStats(Camera.Parameters parameters) {
        return collectStats(parameters.flatten());
    }

    private static String findSettableValue(String str, Collection<String> collection, String... strArr) {
        new ObfuscatedString(new long[]{-8561751012943519674L, 8123597172559228522L, 6420706988154508218L, 9015395288884164135L}).toString();
        new ObfuscatedString(new long[]{8111130826258290420L, 1497529260814751524L, 1353329011219417659L}).toString();
        new ObfuscatedString(new long[]{-1111552803177129666L, 7041778703234650312L, 1233970529620927604L, -1849051911816229188L}).toString();
        Arrays.toString(strArr);
        new ObfuscatedString(new long[]{-7000293409532939711L, -3622756719787839007L, 8259314855221338179L, -3802889264800681238L}).toString();
        new ObfuscatedString(new long[]{6888693906702450522L, 773317559121560268L, -7775502287401668585L}).toString();
        new ObfuscatedString(new long[]{4512990722716412238L, 3306285612804250635L, -5617594080560554963L}).toString();
        Objects.toString(collection);
        if (collection != null) {
            for (String str2 : strArr) {
                if (collection.contains(str2)) {
                    new ObfuscatedString(new long[]{-2344650434750469938L, -205034848777491476L, 4376135917651692333L, 1813610888539679731L}).toString();
                    new ObfuscatedString(new long[]{943284013450802051L, -2000017626867697867L}).toString();
                    new ObfuscatedString(new long[]{8567698473418925929L, -1871436673308267576L}).toString();
                    return str2;
                }
            }
        }
        new ObfuscatedString(new long[]{3134391632464452367L, -5604648824138919100L, 2123466763557300238L, 2949043568765075790L}).toString();
        new ObfuscatedString(new long[]{6280847336753432670L, -5141498630863526924L, 7515250716764473148L, -7349758035181372617L, -6051966824641730422L}).toString();
        return null;
    }

    private static Integer indexOfClosestZoom(Camera.Parameters parameters, double d) {
        List<Integer> zoomRatios = parameters.getZoomRatios();
        new ObfuscatedString(new long[]{-4496830505237553805L, -2554629589136357418L, -7786065343914051122L, -6212422120830381591L}).toString();
        new ObfuscatedString(new long[]{-7131165163133494142L, -8753736966302084448L, -3939515651078084195L}).toString();
        Objects.toString(zoomRatios);
        int maxZoom = parameters.getMaxZoom();
        if (zoomRatios != null && !zoomRatios.isEmpty() && zoomRatios.size() == maxZoom + 1) {
            double d2 = d * 100.0d;
            double d3 = Double.POSITIVE_INFINITY;
            int i = 0;
            for (int i2 = 0; i2 < zoomRatios.size(); i2++) {
                double abs = Math.abs(zoomRatios.get(i2).intValue() - d2);
                if (abs < d3) {
                    i = i2;
                    d3 = abs;
                }
            }
            new ObfuscatedString(new long[]{-2270808221794571889L, 4960817269858783751L, -7669025682671404939L, -474004339361942930L}).toString();
            new ObfuscatedString(new long[]{-3700864145719967152L, 5184098946455458335L, -5649372821746615171L, 717938009172911257L}).toString();
            zoomRatios.get(i).intValue();
            return Integer.valueOf(i);
        }
        new ObfuscatedString(new long[]{8576955420959155026L, 5570154780344298352L, 6265865113662502146L, -1551880071654509094L}).toString();
        new ObfuscatedString(new long[]{3503263519683660135L, -4708841677986921523L, -2802023567174956849L, -7295759170094275206L}).toString();
        return null;
    }

    public static void setBarcodeSceneMode(Camera.Parameters parameters) {
        if (new ObfuscatedString(new long[]{3102331593072817945L, -914971529699293578L}).toString().equals(parameters.getSceneMode())) {
            new ObfuscatedString(new long[]{7935961632041760667L, -6312431544061725664L, 2911794768585298392L, 6353716833148097744L}).toString();
            new ObfuscatedString(new long[]{-4732948499822928261L, -7093234110886430196L, 8255238482077869044L, 4330095883885080251L, -6043223120237022436L}).toString();
        } else {
            String findSettableValue = findSettableValue(new ObfuscatedString(new long[]{8028206080704915526L, -2371056209442944541L, -342049516796979972L}).toString(), parameters.getSupportedSceneModes(), new ObfuscatedString(new long[]{-3435995150024441778L, -8543544899223217469L}).toString());
            if (findSettableValue != null) {
                parameters.setSceneMode(findSettableValue);
            }
        }
    }

    public static void setBestExposure(Camera.Parameters parameters, boolean z) {
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (minExposureCompensation != 0 || maxExposureCompensation != 0) {
            float f = 0.0f;
            if (exposureCompensationStep > 0.0f) {
                if (!z) {
                    f = MAX_EXPOSURE_COMPENSATION;
                }
                int max = Math.max(Math.min(Math.round(f / exposureCompensationStep), maxExposureCompensation), minExposureCompensation);
                if (parameters.getExposureCompensation() == max) {
                    new ObfuscatedString(new long[]{7765860087816416491L, 5697381333022599010L, 6922755905982589937L, -3474916606400804643L}).toString();
                    new ObfuscatedString(new long[]{5778785242634104331L, 4988695162893215289L, 3102725280761498164L, -9019863779537741427L, -1587688599590400004L, 2924417795733461963L}).toString();
                    new ObfuscatedString(new long[]{26353053362816964L, 4946836217504954775L}).toString();
                    return;
                } else {
                    new ObfuscatedString(new long[]{-774372354636354607L, 7084165343878274778L, -6010958724267895184L, 4056758374257449410L}).toString();
                    new ObfuscatedString(new long[]{-569701477328737955L, 8326632747288151263L, 7713273191673830994L, 5924842082990067003L, -80719485866400041L, 2148849074189127186L}).toString();
                    new ObfuscatedString(new long[]{3084174982528672496L, 2181784588686126432L}).toString();
                    parameters.setExposureCompensation(max);
                    return;
                }
            }
        }
        new ObfuscatedString(new long[]{-2385266718112007138L, -7151195413366915879L, -1712157024478189852L, 183707747081693898L}).toString();
        new ObfuscatedString(new long[]{-7365016174528717896L, -7358088556959154321L, 2493213889439886571L, -2565933151440806475L, -4542161732361681167L, -7361844856044964562L, -6907502594225733063L}).toString();
    }

    public static void setBestPreviewFPS(Camera.Parameters parameters) {
        setBestPreviewFPS(parameters, 10, 20);
    }

    public static void setFocus(Camera.Parameters parameters, CameraSettings.FocusMode focusMode, boolean z) {
        String findSettableValue;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (!z && focusMode != CameraSettings.FocusMode.AUTO) {
            if (focusMode == CameraSettings.FocusMode.CONTINUOUS) {
                findSettableValue = findSettableValue(new ObfuscatedString(new long[]{5991633247571953547L, 330673674384164663L, 5332501540424234253L}).toString(), supportedFocusModes, new ObfuscatedString(new long[]{2034210396616669302L, -5217840323524451941L, -9001823094213309920L, 7789106686902570218L}).toString(), new ObfuscatedString(new long[]{-7428523907386840681L, -519463355464305034L, 3682872662632638689L}).toString(), new ObfuscatedString(new long[]{-5769950152707385313L, 751149857331086467L}).toString());
            } else if (focusMode == CameraSettings.FocusMode.INFINITY) {
                findSettableValue = findSettableValue(new ObfuscatedString(new long[]{-7526287351527797494L, 6584260084748976428L, 7148252805985858934L}).toString(), supportedFocusModes, new ObfuscatedString(new long[]{-5291888326850563374L, -5807040438312730872L}).toString());
            } else if (focusMode == CameraSettings.FocusMode.MACRO) {
                findSettableValue = findSettableValue(new ObfuscatedString(new long[]{-4287244800123578821L, 6304029410377995037L, 7677319469560615902L}).toString(), supportedFocusModes, new ObfuscatedString(new long[]{3382755648869774060L, -8839626644690171065L}).toString());
            } else {
                findSettableValue = null;
            }
        } else {
            findSettableValue = findSettableValue(new ObfuscatedString(new long[]{3560174275499816861L, -6419855500736580079L, -803317336779055036L}).toString(), supportedFocusModes, new ObfuscatedString(new long[]{-1183728261625274352L, -566845026576103407L}).toString());
        }
        if (!z && findSettableValue == null) {
            findSettableValue = findSettableValue(new ObfuscatedString(new long[]{5328839432652616986L, 3404923214102777877L, -6979864803548510859L}).toString(), supportedFocusModes, new ObfuscatedString(new long[]{-9097686292250012661L, 4100194708787073175L}).toString(), new ObfuscatedString(new long[]{-3154172429724078999L, 1501561265809311122L}).toString());
        }
        if (findSettableValue != null) {
            if (findSettableValue.equals(parameters.getFocusMode())) {
                new ObfuscatedString(new long[]{9040793905447914579L, -1818481648200832560L, -133835047974805144L, -3401252231556470534L}).toString();
                new ObfuscatedString(new long[]{-7772409377563620813L, 6635951475054321784L, -5373494519874271547L, -7952033202143978527L, -8675116375339855393L}).toString();
            } else {
                parameters.setFocusMode(findSettableValue);
            }
        }
    }

    @TargetApi(15)
    public static void setFocusArea(Camera.Parameters parameters) {
        if (parameters.getMaxNumFocusAreas() > 0) {
            new ObfuscatedString(new long[]{7877701956230328349L, 1285273476578872391L, -6743918013545211238L, 4753674584372621664L}).toString();
            new ObfuscatedString(new long[]{1076935723869242056L, -1260685445900735449L, 2317028334605485960L, 4444358059194597585L}).toString();
            toString((Iterable<Camera.Area>) parameters.getFocusAreas());
            List<Camera.Area> buildMiddleArea = buildMiddleArea(400);
            new ObfuscatedString(new long[]{-7359702418313909138L, -4129566524111654383L, -3856456779697745006L, -6132919282713331623L}).toString();
            new ObfuscatedString(new long[]{-1210692457577228196L, 2306729573646370353L, -723162601295941516L, -3445001116090700880L}).toString();
            toString((Iterable<Camera.Area>) buildMiddleArea);
            parameters.setFocusAreas(buildMiddleArea);
            return;
        }
        new ObfuscatedString(new long[]{1602893130367695770L, -887112402424363832L, -5073137361255674335L, 5913573936514683919L}).toString();
        new ObfuscatedString(new long[]{-5006860230736267789L, 5612727635053184519L, 4949240886902612442L, 536738244244784968L, 2112279987998727736L, 3057347931843442780L}).toString();
    }

    public static void setInvertColor(Camera.Parameters parameters) {
        if (new ObfuscatedString(new long[]{-3866807455426440171L, -8413352558303085668L}).toString().equals(parameters.getColorEffect())) {
            new ObfuscatedString(new long[]{7162884705544605451L, -6376294137262422960L, -1775434182030542782L, 5468395879152904619L}).toString();
            new ObfuscatedString(new long[]{-8822290481404143564L, 394806436845161227L, -2377513007955979888L, -6241090091948031003L, 6088347697136073350L}).toString();
        } else {
            String findSettableValue = findSettableValue(new ObfuscatedString(new long[]{-5131143923223863833L, -3080226003459933637L, 3916518475949953949L}).toString(), parameters.getSupportedColorEffects(), new ObfuscatedString(new long[]{-163255529703440210L, 2125682541372054769L}).toString());
            if (findSettableValue != null) {
                parameters.setColorEffect(findSettableValue);
            }
        }
    }

    @TargetApi(15)
    public static void setMetering(Camera.Parameters parameters) {
        if (parameters.getMaxNumMeteringAreas() > 0) {
            new ObfuscatedString(new long[]{851745675638194504L, -3075784511396283377L, 3301770316265156935L, -4621227440334323758L}).toString();
            new ObfuscatedString(new long[]{7925230369239680213L, -1403220664053822043L, -1216740900405621254L, 5416156619954076882L}).toString();
            Objects.toString(parameters.getMeteringAreas());
            List<Camera.Area> buildMiddleArea = buildMiddleArea(400);
            new ObfuscatedString(new long[]{91337670862546497L, -4243862017152300041L, -4415467648406795678L, -3437191750208867261L}).toString();
            new ObfuscatedString(new long[]{1304293466142012593L, -2753595923029788876L, -1186651467004290945L, -2270820908035729687L, 1195392083399369548L}).toString();
            toString((Iterable<Camera.Area>) buildMiddleArea);
            parameters.setMeteringAreas(buildMiddleArea);
            return;
        }
        new ObfuscatedString(new long[]{5126601660239120382L, -5178366980970755030L, -4988415714309114950L, 763158952627889501L}).toString();
        new ObfuscatedString(new long[]{-2198676652834190128L, -6627908427136408044L, 2394961367970681128L, 2973624520505098370L, 1639401821052496565L, -2370625212112074945L}).toString();
    }

    public static void setTorch(Camera.Parameters parameters, boolean z) {
        String findSettableValue;
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        if (z) {
            findSettableValue = findSettableValue(new ObfuscatedString(new long[]{-3859532065218591200L, 795017070539553416L, 4592932805601448141L}).toString(), supportedFlashModes, new ObfuscatedString(new long[]{3004568361349651369L, -7077134468783091326L}).toString(), new ObfuscatedString(new long[]{1936897558838767474L, -7489856200009837888L}).toString());
        } else {
            findSettableValue = findSettableValue(new ObfuscatedString(new long[]{-1411607215406579503L, 7025138656885375565L, 3700721793059538523L}).toString(), supportedFlashModes, new ObfuscatedString(new long[]{3250456891899336699L, -748704568581519852L}).toString());
        }
        if (findSettableValue != null) {
            if (findSettableValue.equals(parameters.getFlashMode())) {
                new ObfuscatedString(new long[]{8784685904195813215L, 3583823219604316523L, -2269715579452679326L, 9005479611912708559L}).toString();
                new ObfuscatedString(new long[]{3894231207933611029L, -6246809873616020629L, -8904956834820310923L, 1490637993784526258L, -6769325523697807845L}).toString();
            } else {
                new ObfuscatedString(new long[]{537605060039032402L, 2502385374999938066L, 17821091427242288L, 7845732818003772691L}).toString();
                new ObfuscatedString(new long[]{3766969627439635306L, 6073192903975197459L, -5336847647070125331L, -8760604696769867783L}).toString();
                parameters.setFlashMode(findSettableValue);
            }
        }
    }

    @TargetApi(15)
    public static void setVideoStabilization(Camera.Parameters parameters) {
        if (parameters.isVideoStabilizationSupported()) {
            if (parameters.getVideoStabilization()) {
                new ObfuscatedString(new long[]{-507066799211678472L, 7840791166953150209L, -3344957178615238884L, 5402250122684520912L}).toString();
                new ObfuscatedString(new long[]{1113282428191436079L, -917387004694681935L, -6189894406299746546L, -6997967340501535736L, -7441437914938690327L, 9187452247478306347L}).toString();
                return;
            } else {
                new ObfuscatedString(new long[]{-2878105398972082102L, 7418057815134441262L, -4178888426135593583L, 6984867984146288066L}).toString();
                new ObfuscatedString(new long[]{193929674806169004L, 2762968725393820400L, -4882962385027622390L, -9061061983362470338L, -2846344478617816476L}).toString();
                parameters.setVideoStabilization(true);
                return;
            }
        }
        new ObfuscatedString(new long[]{-3129890137365519189L, -2601534776638913420L, -5549304542886028038L, -339070358134395955L}).toString();
        new ObfuscatedString(new long[]{-3080612328428657503L, 8496726156018940371L, -3913174879826668640L, 5257625484713477394L, -1751771985307724326L, 4530799741406607793L, 836475348333414695L}).toString();
    }

    public static void setZoom(Camera.Parameters parameters, double d) {
        if (parameters.isZoomSupported()) {
            Integer indexOfClosestZoom = indexOfClosestZoom(parameters, d);
            if (indexOfClosestZoom == null) {
                return;
            }
            if (parameters.getZoom() == indexOfClosestZoom.intValue()) {
                new ObfuscatedString(new long[]{-6583286533495300626L, 8676361975054051012L, 3196711755952974970L, -6327521431790274708L}).toString();
                new ObfuscatedString(new long[]{-1726634446901866813L, 383273572730473556L, -7421235476329855185L, -3679349487994786040L}).toString();
                return;
            } else {
                new ObfuscatedString(new long[]{5596225021217576806L, 7580729998216953854L, -1376472738756545092L, 3534846621795192727L}).toString();
                new ObfuscatedString(new long[]{5964551620982455460L, -8362185821325864842L, 6250156689385875388L}).toString();
                parameters.setZoom(indexOfClosestZoom.intValue());
                return;
            }
        }
        new ObfuscatedString(new long[]{159885635138468245L, 7615096503612052398L, -473454843653943193L, 5708577930145880040L}).toString();
        new ObfuscatedString(new long[]{7713519113338992269L, 8934668131596382390L, 3362564355133997348L, -8620342252894154894L}).toString();
    }

    private static String toString(Collection<int[]> collection) {
        if (collection != null && !collection.isEmpty()) {
            StringBuilder sb = new StringBuilder("[");
            Iterator<int[]> it = collection.iterator();
            while (it.hasNext()) {
                sb.append(Arrays.toString(it.next()));
                if (it.hasNext()) {
                    sb.append(new ObfuscatedString(new long[]{381109022828647684L, -7976972908528964614L}).toString());
                }
            }
            sb.append(']');
            return sb.toString();
        }
        return new ObfuscatedString(new long[]{6569981624081861155L, 6714830113577658826L}).toString();
    }

    public static String collectStats(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(1000);
        sb.append(new ObfuscatedString(new long[]{-6303264999893255530L, -2378793142210023340L}).toString());
        sb.append(Build.BOARD);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-5484427935217726689L, -5102980780819879297L}).toString());
        sb.append(Build.BRAND);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{2544301721894105029L, 6050914906584386170L}).toString());
        sb.append(Build.CPU_ABI);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{8112480954311768651L, -1432545632715341511L}).toString());
        sb.append(Build.DEVICE);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{1563360474764669487L, 7261269150133419691L}).toString());
        sb.append(Build.DISPLAY);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-4850329708889506718L, -222482184630896912L, -788470443636616626L}).toString());
        sb.append(Build.FINGERPRINT);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-3416574182643248060L, 7769035131297016103L}).toString());
        sb.append(Build.HOST);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-359104078663226440L, -6112815179721172263L}).toString());
        sb.append(Build.ID);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{2480866219646943943L, 6123767940468798910L, 7270234342867427241L}).toString());
        sb.append(Build.MANUFACTURER);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-3895511474745044528L, -9218816925284051468L}).toString());
        sb.append(Build.MODEL);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-8828794310175484407L, -7209804100295683312L}).toString());
        sb.append(Build.PRODUCT);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-3628382667697966395L, -4904393040581613028L}).toString());
        sb.append(Build.TAGS);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{1404271401608688890L, -6731746057646894754L}).toString());
        sb.append(Build.TIME);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-5317752080780732205L, -6575214884436606025L}).toString());
        sb.append(Build.TYPE);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-706400832227113547L, -6001315069042119016L}).toString());
        sb.append(Build.USER);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{2778314635875512432L, -2735856825436149898L, -2058130290172472512L, -8105926720218685914L}).toString());
        sb.append(Build.VERSION.CODENAME);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{756752055042783072L, 8354126269188453423L, 1714992690828329548L, -5047573710798692170L}).toString());
        sb.append(Build.VERSION.INCREMENTAL);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{-2745783551683802456L, -3798692262464181425L, 6240244531532135000L}).toString());
        sb.append(Build.VERSION.RELEASE);
        sb.append('\n');
        sb.append(new ObfuscatedString(new long[]{4990514596130692621L, 4233736624163718322L, 7396698126045892834L}).toString());
        sb.append(Build.VERSION.SDK_INT);
        sb.append('\n');
        if (charSequence != null) {
            String[] split = SEMICOLON.split(charSequence);
            Arrays.sort(split);
            for (String str : split) {
                sb.append(str);
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    public static void setBestPreviewFPS(Camera.Parameters parameters, int i, int i2) {
        int[] iArr;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        new ObfuscatedString(new long[]{9043984278129236597L, -5043170738351839232L, 2093763710990582208L, 7840228684660636787L}).toString();
        new ObfuscatedString(new long[]{3573108252903428717L, -2481607392092280187L, -8979040811100654545L, -188522935148320476L}).toString();
        toString((Collection<int[]>) supportedPreviewFpsRange);
        if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
            return;
        }
        Iterator<int[]> it = supportedPreviewFpsRange.iterator();
        while (true) {
            if (!it.hasNext()) {
                iArr = null;
                break;
            }
            iArr = it.next();
            int i3 = iArr[0];
            int i4 = iArr[1];
            if (i3 >= i * 1000 && i4 <= i2 * 1000) {
                break;
            }
        }
        if (iArr == null) {
            new ObfuscatedString(new long[]{7425263452847392833L, -4293779405534571727L, 5853690950051472L, 5638918327720381194L}).toString();
            new ObfuscatedString(new long[]{7939791630041430092L, -3523542044155298559L, -2464909027746232148L, -734771483148486229L}).toString();
            return;
        }
        int[] iArr2 = new int[2];
        parameters.getPreviewFpsRange(iArr2);
        if (Arrays.equals(iArr2, iArr)) {
            new ObfuscatedString(new long[]{-8193942494763935065L, 2251492193618463412L, -1340297542579533696L, -2354917355404670552L}).toString();
            new ObfuscatedString(new long[]{-8981010268977022931L, 3323930005082323446L, 5248345491922589835L, 3896391212629518076L, -1682703434151663982L}).toString();
            Arrays.toString(iArr);
        } else {
            new ObfuscatedString(new long[]{-2740766952105158155L, -1722862936044160317L, 7049929105457588412L, -5073767273028268265L}).toString();
            new ObfuscatedString(new long[]{5385525491077390050L, 4881887005043222377L, -1373086719141440427L, 9042381602395558986L}).toString();
            Arrays.toString(iArr);
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
        }
    }

    @TargetApi(15)
    private static String toString(Iterable<Camera.Area> iterable) {
        if (iterable == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Camera.Area area : iterable) {
            sb.append(area.rect);
            sb.append(':');
            sb.append(area.weight);
            sb.append(' ');
        }
        return sb.toString();
    }
}
