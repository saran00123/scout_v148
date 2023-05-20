.class public final enum Lcom/taobao/accs/data/Message$ReqType;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/accs/data/Message$ReqType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum ACK:Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum DATA:Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum REQ:Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum RES:Lcom/taobao/accs/data/Message$ReqType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 80
    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const/4 v1, 0x0

    const-string v2, "DATA"

    invoke-direct {v0, v2, v1}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const/4 v2, 0x1

    const-string v3, "ACK"

    invoke-direct {v0, v3, v2}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x2

    const-string v4, "REQ"

    invoke-direct {v0, v4, v3}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const/4 v4, 0x3

    const-string v5, "RES"

    invoke-direct {v0, v5, v4}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v0, 0x4

    .line 79
    new-array v0, v0, [Lcom/taobao/accs/data/Message$ReqType;

    sget-object v5, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->$VALUES:[Lcom/taobao/accs/data/Message$ReqType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/accs/data/Message$ReqType;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 93
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 91
    :cond_e
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 89
    :cond_11
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 87
    :cond_14
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 85
    :cond_17
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/data/Message$ReqType;
    .registers 2

    .line 79
    const-class v0, Lcom/taobao/accs/data/Message$ReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/data/Message$ReqType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/accs/data/Message$ReqType;
    .registers 1

    .line 79
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->$VALUES:[Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v0}, [Lcom/taobao/accs/data/Message$ReqType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/data/Message$ReqType;

    return-object v0
.end method
