.class public final enum Lcom/tutk/IOTC/DebugToolMode;
.super Ljava/lang/Enum;
.source "DebugToolMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tutk/IOTC/DebugToolMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tutk/IOTC/DebugToolMode;

.field public static final enum ENABLE_LOCAL:Lcom/tutk/IOTC/DebugToolMode;

.field public static final enum ENABLE_REMOTE:Lcom/tutk/IOTC/DebugToolMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 12
    new-instance v0, Lcom/tutk/IOTC/DebugToolMode;

    const/4 v1, 0x0

    const-string v2, "ENABLE_LOCAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/tutk/IOTC/DebugToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/DebugToolMode;->ENABLE_LOCAL:Lcom/tutk/IOTC/DebugToolMode;

    .line 13
    new-instance v0, Lcom/tutk/IOTC/DebugToolMode;

    const/4 v2, 0x1

    const-string v3, "ENABLE_REMOTE"

    invoke-direct {v0, v3, v2, v2}, Lcom/tutk/IOTC/DebugToolMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/DebugToolMode;->ENABLE_REMOTE:Lcom/tutk/IOTC/DebugToolMode;

    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Lcom/tutk/IOTC/DebugToolMode;

    sget-object v3, Lcom/tutk/IOTC/DebugToolMode;->ENABLE_LOCAL:Lcom/tutk/IOTC/DebugToolMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/tutk/IOTC/DebugToolMode;->ENABLE_REMOTE:Lcom/tutk/IOTC/DebugToolMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tutk/IOTC/DebugToolMode;->$VALUES:[Lcom/tutk/IOTC/DebugToolMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/tutk/IOTC/DebugToolMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutk/IOTC/DebugToolMode;
    .registers 2

    .line 11
    const-class v0, Lcom/tutk/IOTC/DebugToolMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tutk/IOTC/DebugToolMode;

    return-object p0
.end method

.method public static values()[Lcom/tutk/IOTC/DebugToolMode;
    .registers 1

    .line 11
    sget-object v0, Lcom/tutk/IOTC/DebugToolMode;->$VALUES:[Lcom/tutk/IOTC/DebugToolMode;

    invoke-virtual {v0}, [Lcom/tutk/IOTC/DebugToolMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tutk/IOTC/DebugToolMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/tutk/IOTC/DebugToolMode;->value:I

    return v0
.end method
