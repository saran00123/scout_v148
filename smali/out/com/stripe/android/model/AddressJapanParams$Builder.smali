.class public final Lcom/stripe/android/model/AddressJapanParams$Builder;
.super Ljava/lang/Object;
.source "AddressJapanParams.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/AddressJapanParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/AddressJapanParams;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/android/model/AddressJapanParams$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/AddressJapanParams;",
        "()V",
        "city",
        "",
        "country",
        "line1",
        "line2",
        "postalCode",
        "state",
        "town",
        "build",
        "setCity",
        "setCountry",
        "setLine1",
        "setLine2",
        "setPostalCode",
        "setState",
        "setTown",
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

.field private town:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/model/AddressJapanParams;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    new-instance v8, Lcom/stripe/android/model/AddressJapanParams;

    .line 121
    iget-object v1, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->city:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->country:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->line1:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->line2:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->postalCode:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->state:Ljava/lang/String;

    .line 127
    iget-object v7, p0, Lcom/stripe/android/model/AddressJapanParams$Builder;->town:Ljava/lang/String;

    move-object v0, v8

    .line 120
    invoke-direct/range {v0 .. v7}, Lcom/stripe/android/model/AddressJapanParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/stripe/android/model/AddressJapanParams$Builder;->build()Lcom/stripe/android/model/AddressJapanParams;

    move-result-object v0

    return-object v0
.end method

.method public final setCity(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    .line 74
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    if-eqz p1, :cond_20

    .line 81
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
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final setLine1(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    .line 88
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->line1:Ljava/lang/String;

    return-object v0
.end method

.method public final setLine2(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 94
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    .line 95
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->line2:Ljava/lang/String;

    return-object v0
.end method

.method public final setPostalCode(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 101
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    .line 102
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setState(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 108
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    .line 109
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setTown(Ljava/lang/String;)Lcom/stripe/android/model/AddressJapanParams$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 115
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/AddressJapanParams$Builder;

    .line 116
    iput-object p1, v0, Lcom/stripe/android/model/AddressJapanParams$Builder;->town:Ljava/lang/String;

    return-object v0
.end method
