.class public Landroidx/constraintlayout/core/dsl/KeyPosition;
.super Landroidx/constraintlayout/core/dsl/Keys;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/dsl/KeyPosition$Type;
    }
.end annotation


# instance fields
.field private mFrame:I

.field private mPercentHeight:F

.field private mPercentWidth:F

.field private mPercentX:F

.field private mPercentY:F

.field private mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

.field private mTarget:Ljava/lang/String;

.field private mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/dsl/Keys;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 11
    .line 12
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    .line 17
    .line 18
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    .line 19
    .line 20
    iput v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    .line 21
    .line 22
    sget-object v0, Landroidx/constraintlayout/core/dsl/KeyPosition$Type;->CARTESIAN:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 27
    .line 28
    iput p2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getFrames()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 2
    .line 3
    return v0
.end method

.method public getPercentHeight()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public getPercentWidth()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getPercentX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    .line 2
    .line 3
    return v0
.end method

.method public getPercentY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    .line 2
    .line 3
    return v0
.end method

.method public getPositionType()Landroidx/constraintlayout/core/dsl/KeyPosition$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransitionEasing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setFrames(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 2
    .line 3
    return-void
.end method

.method public setPercentHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    .line 2
    .line 3
    return-void
.end method

.method public setPercentWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    .line 2
    .line 3
    return-void
.end method

.method public setPercentX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    .line 2
    .line 3
    return-void
.end method

.method public setPercentY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    .line 2
    .line 3
    return-void
.end method

.method public setPositionType(Landroidx/constraintlayout/core/dsl/KeyPosition$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 2
    .line 3
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTransitionEasing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "KeyPositions:{\n"

    .line 2
    .line 3
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "target"

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTarget:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Keys;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "frame:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mFrame:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",\n"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v1, "type:\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPositionType:Landroidx/constraintlayout/core/dsl/KeyPosition$Type;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\',\n"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string v1, "easing"

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Keys;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "percentX"

    .line 56
    .line 57
    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentX:F

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Keys;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 60
    .line 61
    .line 62
    const-string v1, "percentY"

    .line 63
    .line 64
    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentY:F

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Keys;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 67
    .line 68
    .line 69
    const-string v1, "percentWidth"

    .line 70
    .line 71
    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentWidth:F

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Keys;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 74
    .line 75
    .line 76
    const-string v1, "percentHeight"

    .line 77
    .line 78
    iget v2, p0, Landroidx/constraintlayout/core/dsl/KeyPosition;->mPercentHeight:F

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/core/dsl/Keys;->append(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    .line 81
    .line 82
    .line 83
    const-string v1, "},\n"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
