.class public final Lcom/nimbusds/jose/EncryptionMethod;
.super Lcom/nimbusds/jose/Algorithm;
.source "EncryptionMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/EncryptionMethod$Family;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cekBitLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 63
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    const/16 v2, 0x100

    const-string v3, "A128CBC-HS256"

    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    .line 71
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A192CBC-HS384"

    const/16 v4, 0x180

    invoke-direct {v0, v3, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    .line 79
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    const/16 v3, 0x200

    const-string v4, "A256CBC-HS512"

    invoke-direct {v0, v4, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    .line 87
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v4, "A128CBC+HS256"

    invoke-direct {v0, v4, v1, v2}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 95
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v4, "A256CBC+HS512"

    invoke-direct {v0, v4, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    .line 103
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A128GCM"

    const/16 v4, 0x80

    invoke-direct {v0, v3, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 111
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A192GCM"

    const/16 v4, 0xc0

    invoke-direct {v0, v3, v1, v4}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    .line 119
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    const-string v3, "A256GCM"

    invoke-direct {v0, v3, v1, v2}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .registers 4

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V
    .registers 4

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    .line 170
    iput p3, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/EncryptionMethod;
    .registers 2

    .line 222
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 226
    :cond_f
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 228
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 230
    :cond_1e
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 232
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 234
    :cond_2d
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 236
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 238
    :cond_3c
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 240
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 242
    :cond_4b
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 244
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 246
    :cond_5a
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 248
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 250
    :cond_69
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 252
    sget-object p0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    return-object p0

    .line 256
    :cond_78
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cekBitLength()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    return v0
.end method
