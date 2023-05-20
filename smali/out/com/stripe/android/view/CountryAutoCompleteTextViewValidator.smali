.class public final Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;
.super Ljava/lang/Object;
.source "CountryAutoCompleteTextViewValidator.kt"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCountryAutoCompleteTextViewValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountryAutoCompleteTextViewValidator.kt\ncom/stripe/android/view/CountryAutoCompleteTextViewValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n256#2,2:21\n*E\n*S KotlinDebug\n*F\n+ 1 CountryAutoCompleteTextViewValidator.kt\ncom/stripe/android/view/CountryAutoCompleteTextViewValidator\n*L\n13#1,2:21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;",
        "Landroid/widget/AutoCompleteTextView$Validator;",
        "countryAdapter",
        "Lcom/stripe/android/view/CountryAdapter;",
        "onCountrySelected",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/view/Country;",
        "",
        "(Lcom/stripe/android/view/CountryAdapter;Lkotlin/jvm/functions/Function1;)V",
        "fixText",
        "",
        "invalidText",
        "isValid",
        "",
        "text",
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
.field private final countryAdapter:Lcom/stripe/android/view/CountryAdapter;

.field private final onCountrySelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/view/Country;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/android/view/CountryAdapter;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .param p1    # Lcom/stripe/android/view/CountryAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/view/CountryAdapter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/view/Country;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "countryAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCountrySelected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    iput-object p2, p0, Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;->onCountrySelected:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_3

    goto :goto_7

    :cond_3
    const-string p1, ""

    .line 10
    check-cast p1, Ljava/lang/CharSequence;

    :goto_7
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;->countryAdapter:Lcom/stripe/android/view/CountryAdapter;

    invoke-virtual {v0}, Lcom/stripe/android/view/CountryAdapter;->getUnfilteredCountries$stripe_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/android/view/Country;

    .line 14
    invoke-virtual {v2}, Lcom/stripe/android/view/Country;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 15
    :goto_29
    iget-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextViewValidator;->onCountrySelected:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/stripe/android/view/Country;

    if-eqz v1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    return p1
.end method
