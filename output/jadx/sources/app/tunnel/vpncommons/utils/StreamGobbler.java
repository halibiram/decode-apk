package app.tunnel.vpncommons.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

/* loaded from: classes.dex */
public class StreamGobbler extends Thread {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final BufferedReader f429xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final List f430x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final OnLineListener f431x1378447b;

    /* loaded from: classes.dex */
    public interface OnLineListener {
        void onLine(String str);
    }

    public StreamGobbler(InputStream inputStream, List<String> list) {
        this.f429xfbe0c504 = new BufferedReader(new InputStreamReader(inputStream));
        this.f430x3271d0aa = list;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        BufferedReader bufferedReader = this.f429xfbe0c504;
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    List list = this.f430x3271d0aa;
                    if (list != null) {
                        list.add(readLine);
                    }
                    OnLineListener onLineListener = this.f431x1378447b;
                    if (onLineListener != null) {
                        onLineListener.onLine(readLine);
                    }
                }
            } catch (IOException unused) {
            }
            try {
                bufferedReader.close();
                return;
            } catch (IOException unused2) {
                return;
            }
        }
    }

    public StreamGobbler(InputStream inputStream, OnLineListener onLineListener) {
        this.f429xfbe0c504 = new BufferedReader(new InputStreamReader(inputStream));
        this.f431x1378447b = onLineListener;
    }
}
