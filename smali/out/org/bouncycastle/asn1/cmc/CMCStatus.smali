.class public Lorg/bouncycastle/asn1/cmc/CMCStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private static range:Ljava/util/Map;

.field public static final success:Lorg/bouncycastle/asn1/cmc/CMCStatus;


# instance fields
.field private final value:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->success:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x6

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x7

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->success:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v2, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .registers 4

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    return-object p0

    :cond_7
    if-eqz p0, :cond_37

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    if-eqz v0, :cond_18

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method