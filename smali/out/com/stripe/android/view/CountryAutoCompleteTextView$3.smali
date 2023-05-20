.class final Lcom/stripe/android/view/CountryAutoCompleteTextView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CountryAutoCompleteTextView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/CountryAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/android/view/Country;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "country",
        "Lcom/stripe/android/view/Country;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $errorMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/CountryAutoCompleteTextView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    iput-object p2, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->$errorMessage:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15
    check-cast p1, Lcom/stripe/android/view/Country;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->invoke(Lcom/stripe/android/view/Country;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/android/view/Country;)V
    .registers 3
    .param p1    # Lcom/stripe/android/view/Country;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 77
    iget-object v0, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->setSelectedCountry(Lcom/stripe/android/view/Country;)V

    if-eqz p1, :cond_d

    .line 80
    iget-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-static {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->access$clearError(Lcom/stripe/android/view/CountryAutoCompleteTextView;)V

    goto :goto_24

    .line 82
    :cond_d
    iget-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-static {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->access$getCountryTextInputLayout$p(Lcom/stripe/android/view/CountryAutoCompleteTextView;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->$errorMessage:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$3;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-static {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->access$getCountryTextInputLayout$p(Lcom/stripe/android/view/CountryAutoCompleteTextView;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :goto_24
    return-void
.end method
