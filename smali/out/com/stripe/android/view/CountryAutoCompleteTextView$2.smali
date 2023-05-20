.class final Lcom/stripe/android/view/CountryAutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "CountryAutoCompleteTextView.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/CountryAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "focused",
        "",
        "onFocusChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/CountryAutoCompleteTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$2;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_c

    .line 62
    iget-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$2;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getCountryAutocomplete$stripe_release()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1f

    .line 64
    :cond_c
    iget-object p1, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$2;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->getCountryAutocomplete$stripe_release()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/stripe/android/view/CountryAutoCompleteTextView$2;->this$0:Lcom/stripe/android/view/CountryAutoCompleteTextView;

    invoke-virtual {p2, p1}, Lcom/stripe/android/view/CountryAutoCompleteTextView;->updateUiForCountryEntered$stripe_release(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method
