.class public final Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const-string p0, "UNKNOWN"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const-string p0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string p0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const-string p0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    .line 27
    .line 28
    return-object p0
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-lez p0, :cond_6

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    shl-int v1, v2, v1

    .line 15
    .line 16
    not-int v3, v1

    .line 17
    and-int/2addr p0, v3

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-le v3, v2, :cond_0

    .line 23
    .line 24
    const-string v3, ", "

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eq v1, v2, :cond_5

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_4

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    if-eq v1, v2, :cond_3

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    if-eq v1, v2, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    if-eq v1, v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "FEEDBACK_GENERIC"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "FEEDBACK_VISUAL"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string v1, "FEEDBACK_AUDIBLE"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const-string v1, "FEEDBACK_HAPTIC"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const-string v1, "FEEDBACK_SPOKEN"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    const-string p0, "]"

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_3

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string p0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string p0, "FLAG_REPORT_VIEW_IDS"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    const-string p0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    const-string p0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    const-string p0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_5
    const-string p0, "DEFAULT"

    .line 40
    .line 41
    return-object p0
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "info.getCapabilities()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "info.loadDescription(packageManager)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
