.class public final enum Lcom/alibaba/sdk/android/logger/LogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/logger/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/logger/LogLevel;

.field public static final enum DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

.field public static final enum ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

.field public static final enum INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

.field public static final enum WARN:Lcom/alibaba/sdk/android/logger/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/alibaba/sdk/android/logger/LogLevel;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/sdk/android/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    new-instance v0, Lcom/alibaba/sdk/android/logger/LogLevel;

    const/4 v2, 0x1

    const-string v3, "INFO"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/sdk/android/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    new-instance v0, Lcom/alibaba/sdk/android/logger/LogLevel;

    const/4 v3, 0x2

    const-string v4, "WARN"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/sdk/android/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    new-instance v0, Lcom/alibaba/sdk/android/logger/LogLevel;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/sdk/android/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/sdk/android/logger/LogLevel;

    sget-object v5, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    aput-object v5, v0, v1

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/logger/LogLevel;->ERROR:Lcom/alibaba/sdk/android/logger/LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->$VALUES:[Lcom/alibaba/sdk/android/logger/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/LogLevel;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/logger/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/logger/LogLevel;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/logger/LogLevel;->$VALUES:[Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/logger/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/logger/LogLevel;

    return-object v0
.end method
