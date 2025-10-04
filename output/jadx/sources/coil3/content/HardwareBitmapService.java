package coil3.content;

import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import coil3.size.Size;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bp\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H'¢\u0006\u0004\b\u0007\u0010\b\u0082\u0001\u0002\t\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcoil3/util/HardwareBitmapService;", "", "Lcoil3/size/Size;", "size", "", "allowHardwareMainThread", "(Lcoil3/size/Size;)Z", "allowHardwareWorkerThread", "()Z", "L듽딝둡됩뒷뎰뎻땥땰뒵땍돤뒤땍땝딝뒀땮따땡딞둬뎠듐땰땋돤땸땝돛뎹뒀뒵둣뎬뒾딁듐됴땧됩됐딽딟둑땤딽뒹든둑도땻돛듔땻딐둥돠딃딅딽땻땡뎡딌뒬듸땧딨땋됨뎸땝뒀딻땠두되든듬땸뎠드될듻땡딄둘땪뒉딌듐둔둠딌듟둬됨딐딄땯딄될듸뒉딄땻땰땬딽땧땔됐뎬뎡땸뎬땦뒘뒈뒨땡땃돰돳두땡딨딃된;", "L딄딸땃뒉뒘땳돛땵딨딀돝땻땳땨뎰둬땡뎡됴딟뒛뎬딠뒤딠뒋뒹돸돷뒹뎽들뒈딟뒬뒨뎽득딸뒼땩됨땸딎뒷둥땰뎨뒛땐둘땱땪듌딽딁뒋뒈뒤뒝듐땮돼땲딄땅딤땧듌땋땨돠듟둑땳땡딃둘땬뒙땨딄딠땲딹돼땜듽돠딄뒬디딨둬딤땬득도뒘된뒐땧땁둣뒝땔돶땧돶딃땸뎡땯돸됐땩돠땫돤도뎰듌드드됐된딃뒤되땥;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface HardwareBitmapService {
    @MainThread
    boolean allowHardwareMainThread(@NotNull Size size);

    @WorkerThread
    boolean allowHardwareWorkerThread();
}
