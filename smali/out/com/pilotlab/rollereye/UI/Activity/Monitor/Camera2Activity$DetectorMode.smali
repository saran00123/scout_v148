.class final enum Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;
.super Ljava/lang/Enum;
.source "Camera2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DetectorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

.field public static final enum TF_OD_API:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 3140
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    const/4 v1, 0x0

    const-string v2, "TF_OD_API"

    invoke-direct {v0, v2, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->TF_OD_API:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    const/4 v0, 0x1

    .line 3139
    new-array v0, v0, [Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    sget-object v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->TF_OD_API:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->$VALUES:[Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;
    .registers 2

    .line 3139
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    return-object p0
.end method

.method public static values()[Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;
    .registers 1

    .line 3139
    sget-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->$VALUES:[Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    invoke-virtual {v0}, [Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    return-object v0
.end method
