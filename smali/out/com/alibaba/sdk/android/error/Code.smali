.class public Lcom/alibaba/sdk/android/error/Code;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final codeInt:Ljava/lang/Integer;

.field private final codeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/error/Code;->codeStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/error/Code;->codeInt:Ljava/lang/Integer;

    if-nez p2, :cond_15

    if-eqz p1, :cond_c

    goto :goto_15

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "\u9519\u8bef\u7801\u5b9a\u4e49\u9519\u8bef"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public getCodeInt()I
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/error/Code;->codeInt:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\u4e0d\u652f\u6301\u6574\u6570\u7c7b\u578b\u7684\u9519\u8bef\u7801"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCodeStr()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/error/Code;->codeStr:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\u4e0d\u652f\u6301\u5b57\u7b26\u4e32\u7c7b\u578b\u7684\u9519\u8bef\u7801"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/error/Code;->codeStr:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/error/Code;->codeInt:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
