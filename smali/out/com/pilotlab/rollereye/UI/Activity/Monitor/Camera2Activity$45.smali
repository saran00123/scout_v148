.class synthetic Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$45;
.super Ljava/lang/Object;
.source "Camera2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pilotlab$rollereye$UI$Activity$Monitor$Camera2Activity$DetectorMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2938
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->values()[Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$45;->$SwitchMap$com$pilotlab$rollereye$UI$Activity$Monitor$Camera2Activity$DetectorMode:[I

    :try_start_9
    sget-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$45;->$SwitchMap$com$pilotlab$rollereye$UI$Activity$Monitor$Camera2Activity$DetectorMode:[I

    sget-object v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->TF_OD_API:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
