.class public final enum Lcom/tutk/IOTC/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tutk/IOTC/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tutk/IOTC/LogLevel;

.field public static final enum LEVEL_DEBUG:Lcom/tutk/IOTC/LogLevel;

.field public static final enum LEVEL_ERROR:Lcom/tutk/IOTC/LogLevel;

.field public static final enum LEVEL_INFO:Lcom/tutk/IOTC/LogLevel;

.field public static final enum LEVEL_SILENCE:Lcom/tutk/IOTC/LogLevel;

.field public static final enum LEVEL_VERBOSE:Lcom/tutk/IOTC/LogLevel;

.field public static final enum LEVEL_WARNING:Lcom/tutk/IOTC/LogLevel;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 7
    new-instance v0, Lcom/tutk/IOTC/LogLevel;

    const/4 v1, 0x0

    const-string v2, "LEVEL_VERBOSE"

    invoke-direct {v0, v2, v1, v1}, Lcom/tutk/IOTC/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_VERBOSE:Lcom/tutk/IOTC/LogLevel;

    .line 8
    new-instance v0, Lcom/tutk/IOTC/LogLevel;

    const/4 v2, 0x1

    const-string v3, "LEVEL_DEBUG"

    invoke-direct {v0, v3, v2, v2}, Lcom/tutk/IOTC/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_DEBUG:Lcom/tutk/IOTC/LogLevel;

    .line 9
    new-instance v0, Lcom/tutk/IOTC/LogLevel;

    const/4 v3, 0x2

    const-string v4, "LEVEL_INFO"

    invoke-direct {v0, v4, v3, v3}, Lcom/tutk/IOTC/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_INFO:Lcom/tutk/IOTC/LogLevel;

    .line 10
    new-instance v0, Lcom/tutk/IOTC/LogLevel;

    const/4 v4, 0x3

    const-string v5, "LEVEL_WARNING"

    invoke-direct {v0, v5, v4, v4}, Lcom/tutk/IOTC/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_WARNING:Lcom/tutk/IOTC/LogLevel;

    .line 11
    new-instance v0, Lcom/tutk/IOTC/LogLevel;

    const/4 v5, 0x4

    const-string v6, "LEVEL_ERROR"

    invoke-direct {v0, v6, v5, v5}, Lcom/tutk/IOTC/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_ERROR:Lcom/tutk/IOTC/LogLevel;

    .line 12
    new-instance v0, Lcom/tutk/IOTC/LogLevel;

    const/4 v6, 0x5

    const-string v7, "LEVEL_SILENCE"

    invoke-direct {v0, v7, v6, v6}, Lcom/tutk/IOTC/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_SILENCE:Lcom/tutk/IOTC/LogLevel;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/tutk/IOTC/LogLevel;

    sget-object v7, Lcom/tutk/IOTC/LogLevel;->LEVEL_VERBOSE:Lcom/tutk/IOTC/LogLevel;

    aput-object v7, v0, v1

    sget-object v1, Lcom/tutk/IOTC/LogLevel;->LEVEL_DEBUG:Lcom/tutk/IOTC/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tutk/IOTC/LogLevel;->LEVEL_INFO:Lcom/tutk/IOTC/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tutk/IOTC/LogLevel;->LEVEL_WARNING:Lcom/tutk/IOTC/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tutk/IOTC/LogLevel;->LEVEL_ERROR:Lcom/tutk/IOTC/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tutk/IOTC/LogLevel;->LEVEL_SILENCE:Lcom/tutk/IOTC/LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tutk/IOTC/LogLevel;->$VALUES:[Lcom/tutk/IOTC/LogLevel;

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
    iput p3, p0, Lcom/tutk/IOTC/LogLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tutk/IOTC/LogLevel;
    .registers 2

    .line 6
    const-class v0, Lcom/tutk/IOTC/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tutk/IOTC/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/tutk/IOTC/LogLevel;
    .registers 1

    .line 6
    sget-object v0, Lcom/tutk/IOTC/LogLevel;->$VALUES:[Lcom/tutk/IOTC/LogLevel;

    invoke-virtual {v0}, [Lcom/tutk/IOTC/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tutk/IOTC/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/tutk/IOTC/LogLevel;->value:I

    return v0
.end method
