.class public final enum Lanetwork/channel/monitor/speed/NetworkSpeed;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanetwork/channel/monitor/speed/NetworkSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/channel/monitor/speed/NetworkSpeed;

.field public static final enum Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

.field public static final enum Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;


# instance fields
.field private final code:I

.field private final desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 6
    new-instance v0, Lanetwork/channel/monitor/speed/NetworkSpeed;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Slow"

    const-string/jumbo v4, "\u5f31\u7f51\u7edc"

    invoke-direct {v0, v3, v1, v4, v2}, Lanetwork/channel/monitor/speed/NetworkSpeed;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    .line 7
    new-instance v0, Lanetwork/channel/monitor/speed/NetworkSpeed;

    const-string v3, "Fast"

    const-string/jumbo v4, "\u5f3a\u7f51\u7edc"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v2, v4, v5}, Lanetwork/channel/monitor/speed/NetworkSpeed;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Lanetwork/channel/monitor/speed/NetworkSpeed;

    sget-object v3, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    aput-object v3, v0, v1

    sget-object v1, Lanetwork/channel/monitor/speed/NetworkSpeed;->Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

    aput-object v1, v0, v2

    sput-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->$VALUES:[Lanetwork/channel/monitor/speed/NetworkSpeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lanetwork/channel/monitor/speed/NetworkSpeed;->desc:Ljava/lang/String;

    .line 12
    iput p4, p0, Lanetwork/channel/monitor/speed/NetworkSpeed;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/monitor/speed/NetworkSpeed;
    .registers 2

    .line 4
    const-class v0, Lanetwork/channel/monitor/speed/NetworkSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanetwork/channel/monitor/speed/NetworkSpeed;

    return-object p0
.end method

.method public static valueOfCode(I)Lanetwork/channel/monitor/speed/NetworkSpeed;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 22
    sget-object p0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Slow:Lanetwork/channel/monitor/speed/NetworkSpeed;

    goto :goto_8

    :cond_6
    sget-object p0, Lanetwork/channel/monitor/speed/NetworkSpeed;->Fast:Lanetwork/channel/monitor/speed/NetworkSpeed;

    :goto_8
    return-object p0
.end method

.method public static values()[Lanetwork/channel/monitor/speed/NetworkSpeed;
    .registers 1

    .line 4
    sget-object v0, Lanetwork/channel/monitor/speed/NetworkSpeed;->$VALUES:[Lanetwork/channel/monitor/speed/NetworkSpeed;

    invoke-virtual {v0}, [Lanetwork/channel/monitor/speed/NetworkSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/monitor/speed/NetworkSpeed;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 18
    iget v0, p0, Lanetwork/channel/monitor/speed/NetworkSpeed;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lanetwork/channel/monitor/speed/NetworkSpeed;->desc:Ljava/lang/String;

    return-object v0
.end method
