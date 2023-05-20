.class public final Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;
.super Ljava/lang/Object;
.source "CountryAutocompleteViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final countryAutocomplete:Landroid/widget/AutoCompleteTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final countryTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/AutoCompleteTextView;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/AutoCompleteTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;->rootView:Landroid/view/View;

    .line 30
    iput-object p2, p0, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;->countryAutocomplete:Landroid/widget/AutoCompleteTextView;

    .line 31
    iput-object p3, p0, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;->countryTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;
    .registers 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 56
    sget v0, Lcom/stripe/android/R$id;->country_autocomplete:I

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1a

    .line 62
    sget v0, Lcom/stripe/android/R$id;->country_text_input_layout:I

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v2, :cond_1a

    .line 68
    new-instance v0, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;

    invoke-direct {v0, p0, v1, v2}, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;-><init>(Landroid/view/View;Landroid/widget/AutoCompleteTextView;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v0

    .line 71
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;
    .registers 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_c

    .line 46
    sget v0, Lcom/stripe/android/R$layout;->country_autocomplete_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {p1}, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;->bind(Landroid/view/View;)Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;

    move-result-object p0

    return-object p0

    .line 44
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/stripe/android/databinding/CountryAutocompleteViewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
