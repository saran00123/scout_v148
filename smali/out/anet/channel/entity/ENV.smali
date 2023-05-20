.class public final enum Lanet/channel/entity/ENV;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanet/channel/entity/ENV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanet/channel/entity/ENV;

.field public static final enum ONLINE:Lanet/channel/entity/ENV;

.field public static final enum PREPARE:Lanet/channel/entity/ENV;

.field public static final enum TEST:Lanet/channel/entity/ENV;


# instance fields
.field private envMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lanet/channel/entity/ENV;

    const/4 v1, 0x0

    const-string v2, "ONLINE"

    invoke-direct {v0, v2, v1, v1}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    new-instance v0, Lanet/channel/entity/ENV;

    const/4 v2, 0x1

    const-string v3, "PREPARE"

    invoke-direct {v0, v3, v2, v2}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    new-instance v0, Lanet/channel/entity/ENV;

    const/4 v3, 0x2

    const-string v4, "TEST"

    invoke-direct {v0, v4, v3, v3}, Lanet/channel/entity/ENV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lanet/channel/entity/ENV;

    sget-object v4, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    aput-object v4, v0, v1

    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    aput-object v1, v0, v2

    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    aput-object v1, v0, v3

    sput-object v0, Lanet/channel/entity/ENV;->$VALUES:[Lanet/channel/entity/ENV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lanet/channel/entity/ENV;->envMode:I

    return-void
.end method

.method public static valueOf(I)Lanet/channel/entity/ENV;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 24
    sget-object p0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    return-object p0

    .line 23
    :cond_9
    sget-object p0, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    return-object p0

    .line 22
    :cond_c
    sget-object p0, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/entity/ENV;
    .registers 2

    .line 7
    const-class v0, Lanet/channel/entity/ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/ENV;

    return-object p0
.end method

.method public static values()[Lanet/channel/entity/ENV;
    .registers 1

    .line 7
    sget-object v0, Lanet/channel/entity/ENV;->$VALUES:[Lanet/channel/entity/ENV;

    invoke-virtual {v0}, [Lanet/channel/entity/ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/entity/ENV;

    return-object v0
.end method


# virtual methods
.method public getEnvMode()I
    .registers 2

    .line 13
    iget v0, p0, Lanet/channel/entity/ENV;->envMode:I

    return v0
.end method

.method public setEnvMode(I)V
    .registers 2

    .line 17
    iput p1, p0, Lanet/channel/entity/ENV;->envMode:I

    return-void
.end method
