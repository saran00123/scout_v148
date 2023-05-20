.class public Lcom/nimbusds/jose/KeyLengthException;
.super Lcom/nimbusds/jose/KeyException;
.source "KeyLengthException.java"


# instance fields
.field private final alg:Lcom/nimbusds/jose/Algorithm;

.field private final expectedLength:I


# direct methods
.method public constructor <init>(ILcom/nimbusds/jose/Algorithm;)V
    .registers 6

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The expected key length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1e
    const-string v1, "Unexpected key length"

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " algorithm)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    const-string v1, ""

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/KeyException;-><init>(Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/nimbusds/jose/KeyLengthException;->expectedLength:I

    .line 82
    iput-object p2, p0, Lcom/nimbusds/jose/KeyLengthException;->alg:Lcom/nimbusds/jose/Algorithm;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/Algorithm;)V
    .registers 3

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(ILcom/nimbusds/jose/Algorithm;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/nimbusds/jose/KeyLengthException;->expectedLength:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/nimbusds/jose/KeyLengthException;->alg:Lcom/nimbusds/jose/Algorithm;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/nimbusds/jose/Algorithm;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/nimbusds/jose/KeyLengthException;->alg:Lcom/nimbusds/jose/Algorithm;

    return-object v0
.end method

.method public getExpectedKeyLength()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/nimbusds/jose/KeyLengthException;->expectedLength:I

    return v0
.end method
