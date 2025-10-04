package defpackage;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.utils.ResolutionSelectorUtil;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import j$.util.Objects;
import java.util.Iterator;

/* renamed from: 둣땜뒹땲딠뒉됐듨딻땩둔됐뎬땻든뎠따돵땔둠뒀따땩뒹딃땔뒬뒀둔땨뎰땠땨든디땅뒷딄뒤땰된딤땦디딨듬딸드딹돠뒤뒬딸땟딨땳뒘돳돴됴도뒈딝뒀됐둥뒷뎰딃돠돳됫딸돴돼땟뒵딄든돝뒘두된돠뒤딠돶두땟땟땱땀땡되땟따땨딠뎹딸뎰딠됩듽됨뒛딄땄딟땮딨뎽딻땀땍뒝딅뒀돠둬뎠땳듨뒉딐된듽됐듰돛, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0634x5c1485ac {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m3229xfbe0c504(Config.OptionPriority optionPriority, Config.OptionPriority optionPriority2) {
        Config.OptionPriority optionPriority3 = Config.OptionPriority.REQUIRED;
        if (optionPriority == optionPriority3 && optionPriority2 == optionPriority3) {
            return true;
        }
        return false;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static Config m3230x3271d0aa(Config config2, Config config3) {
        MutableOptionsBundle create;
        if (config2 == null && config3 == null) {
            return OptionsBundle.emptyBundle();
        }
        if (config3 != null) {
            create = MutableOptionsBundle.from(config3);
        } else {
            create = MutableOptionsBundle.create();
        }
        if (config2 != null) {
            Iterator<Config.Option<?>> it = config2.listOptions().iterator();
            while (it.hasNext()) {
                m3231x1378447b(create, config3, config2, it.next());
            }
        }
        return OptionsBundle.from(create);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static void m3231x1378447b(MutableOptionsBundle mutableOptionsBundle, Config config2, Config config3, Config.Option option) {
        if (Objects.equals(option, ImageOutputConfig.OPTION_RESOLUTION_SELECTOR)) {
            ResolutionSelector resolutionSelector = (ResolutionSelector) config3.retrieveOption(option, null);
            mutableOptionsBundle.insertOption(option, config3.getOptionPriority(option), ResolutionSelectorUtil.overrideResolutionSelectors((ResolutionSelector) config2.retrieveOption(option, null), resolutionSelector));
            return;
        }
        mutableOptionsBundle.insertOption(option, config3.getOptionPriority(option), config3.retrieveOption(option));
    }
}
