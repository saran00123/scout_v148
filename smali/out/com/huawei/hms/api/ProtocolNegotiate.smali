.class public Lcom/huawei/hms/api/ProtocolNegotiate;
.super Ljava/lang/Object;
.source "ProtocolNegotiate.java"


# static fields
.field private static b:Lcom/huawei/hms/api/ProtocolNegotiate;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/huawei/hms/api/ProtocolNegotiate;

    invoke-direct {v0}, Lcom/huawei/hms/api/ProtocolNegotiate;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/ProtocolNegotiate;->b:Lcom/huawei/hms/api/ProtocolNegotiate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/api/ProtocolNegotiate;
    .registers 1

    .line 1
    sget-object v0, Lcom/huawei/hms/api/ProtocolNegotiate;->b:Lcom/huawei/hms/api/ProtocolNegotiate;

    return-object v0
.end method


# virtual methods
.method public getVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    return v0
.end method

.method public negotiate(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2c

    :cond_a
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    goto :goto_29

    .line 10
    :cond_27
    iput v1, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    .line 12
    :goto_29
    iget p1, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    return p1

    .line 13
    :cond_2c
    :goto_2c
    iput v0, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    .line 14
    iget p1, p0, Lcom/huawei/hms/api/ProtocolNegotiate;->a:I

    return p1
.end method
