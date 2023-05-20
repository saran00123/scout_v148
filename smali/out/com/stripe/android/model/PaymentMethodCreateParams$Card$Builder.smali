.class public final Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;
.super Ljava/lang/Object;
.source "PaymentMethodCreateParams.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethodCreateParams$Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        "()V",
        "cvc",
        "",
        "expiryMonth",
        "",
        "Ljava/lang/Integer;",
        "expiryYear",
        "number",
        "build",
        "setCvc",
        "setExpiryMonth",
        "(Ljava/lang/Integer;)Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;",
        "setExpiryYear",
        "setNumber",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private cvc:Ljava/lang/String;

.field private expiryMonth:Ljava/lang/Integer;

.field private expiryYear:Ljava/lang/Integer;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;
    .registers 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 255
    new-instance v9, Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    .line 256
    iget-object v1, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->number:Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->expiryMonth:Ljava/lang/Integer;

    .line 258
    iget-object v3, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->expiryYear:Ljava/lang/Integer;

    .line 259
    iget-object v4, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->cvc:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    .line 255
    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/model/PaymentMethodCreateParams$Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 232
    invoke-virtual {p0}, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->build()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    move-result-object v0

    return-object v0
.end method

.method public final setCvc(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 250
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;

    .line 251
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method public final setExpiryMonth(Ljava/lang/Integer;)Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 242
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;

    .line 243
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->expiryMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setExpiryYear(Ljava/lang/Integer;)Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 246
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;

    .line 247
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->expiryYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setNumber(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 238
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;

    .line 239
    iput-object p1, v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Card$Builder;->number:Ljava/lang/String;

    return-object v0
.end method
