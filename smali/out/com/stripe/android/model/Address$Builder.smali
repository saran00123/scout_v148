.class public final Lcom/stripe/android/model/Address$Builder;
.super Ljava/lang/Object;
.source "Address.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/Address;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/android/model/Address$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/Address;",
        "()V",
        "city",
        "",
        "country",
        "line1",
        "line2",
        "postalCode",
        "state",
        "build",
        "setCity",
        "setCountry",
        "setLine1",
        "setLine2",
        "setPostalCode",
        "setState",
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
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private line1:Ljava/lang/String;

.field private line2:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/Address;
    .registers 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 67
    new-instance v7, Lcom/stripe/android/model/Address;

    .line 68
    iget-object v1, p0, Lcom/stripe/android/model/Address$Builder;->city:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/stripe/android/model/Address$Builder;->country:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/stripe/android/model/Address$Builder;->line1:Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lcom/stripe/android/model/Address$Builder;->line2:Ljava/lang/String;

    .line 72
    iget-object v5, p0, Lcom/stripe/android/model/Address$Builder;->postalCode:Ljava/lang/String;

    .line 73
    iget-object v6, p0, Lcom/stripe/android/model/Address$Builder;->state:Ljava/lang/String;

    move-object v0, v7

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/stripe/android/model/Address$Builder;->build()Lcom/stripe/android/model/Address;

    move-result-object v0

    return-object v0
.end method

.method public final setCity(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Address$Builder;

    .line 43
    iput-object p1, v0, Lcom/stripe/android/model/Address$Builder;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Address$Builder;

    if-eqz p1, :cond_20

    .line 47
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_21

    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    const/4 p1, 0x0

    :goto_21
    iput-object p1, v0, Lcom/stripe/android/model/Address$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final setLine1(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Address$Builder;

    .line 51
    iput-object p1, v0, Lcom/stripe/android/model/Address$Builder;->line1:Ljava/lang/String;

    return-object v0
.end method

.method public final setLine2(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Address$Builder;

    .line 55
    iput-object p1, v0, Lcom/stripe/android/model/Address$Builder;->line2:Ljava/lang/String;

    return-object v0
.end method

.method public final setPostalCode(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Address$Builder;

    .line 59
    iput-object p1, v0, Lcom/stripe/android/model/Address$Builder;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setState(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Address$Builder;

    .line 63
    iput-object p1, v0, Lcom/stripe/android/model/Address$Builder;->state:Ljava/lang/String;

    return-object v0
.end method
