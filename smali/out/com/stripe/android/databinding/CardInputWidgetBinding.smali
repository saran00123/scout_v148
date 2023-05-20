.class public final Lcom/stripe/android/databinding/CardInputWidgetBinding;
.super Ljava/lang/Object;
.source "CardInputWidgetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardBrandView:Lcom/stripe/android/view/CardBrandView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final container:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cvcEditText:Lcom/stripe/android/view/CvcEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cvcTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/stripe/android/view/CardBrandView;Lcom/stripe/android/view/CardNumberEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/FrameLayout;Lcom/stripe/android/view/CvcEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/ExpiryDateEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/PostalCodeEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/CardBrandView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/view/CardNumberEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/view/CvcEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/view/ExpiryDateEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/stripe/android/view/PostalCodeEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->rootView:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    .line 65
    iput-object p3, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    .line 66
    iput-object p4, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 67
    iput-object p5, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->container:Landroid/widget/FrameLayout;

    .line 68
    iput-object p6, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    .line 69
    iput-object p7, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cvcTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 70
    iput-object p8, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    .line 71
    iput-object p9, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 72
    iput-object p10, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    .line 73
    iput-object p11, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/stripe/android/databinding/CardInputWidgetBinding;
    .registers 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 98
    sget v0, Lcom/stripe/android/R$id;->card_brand_view:I

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/stripe/android/view/CardBrandView;

    if-eqz v4, :cond_76

    .line 104
    sget v0, Lcom/stripe/android/R$id;->card_number_edit_text:I

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/stripe/android/view/CardNumberEditText;

    if-eqz v5, :cond_76

    .line 110
    sget v0, Lcom/stripe/android/R$id;->card_number_text_input_layout:I

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v6, :cond_76

    .line 116
    sget v0, Lcom/stripe/android/R$id;->container:I

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_76

    .line 122
    sget v0, Lcom/stripe/android/R$id;->cvc_edit_text:I

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/stripe/android/view/CvcEditText;

    if-eqz v8, :cond_76

    .line 128
    sget v0, Lcom/stripe/android/R$id;->cvc_text_input_layout:I

    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v9, :cond_76

    .line 134
    sget v0, Lcom/stripe/android/R$id;->expiry_date_edit_text:I

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/stripe/android/view/ExpiryDateEditText;

    if-eqz v10, :cond_76

    .line 140
    sget v0, Lcom/stripe/android/R$id;->expiry_date_text_input_layout:I

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v11, :cond_76

    .line 146
    sget v0, Lcom/stripe/android/R$id;->postal_code_edit_text:I

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/stripe/android/view/PostalCodeEditText;

    if-eqz v12, :cond_76

    .line 152
    sget v0, Lcom/stripe/android/R$id;->postal_code_text_input_layout:I

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v13, :cond_76

    .line 158
    new-instance v0, Lcom/stripe/android/databinding/CardInputWidgetBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/stripe/android/databinding/CardInputWidgetBinding;-><init>(Landroid/view/View;Lcom/stripe/android/view/CardBrandView;Lcom/stripe/android/view/CardNumberEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/FrameLayout;Lcom/stripe/android/view/CvcEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/ExpiryDateEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/PostalCodeEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v0

    .line 162
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/CardInputWidgetBinding;
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

    .line 88
    sget v0, Lcom/stripe/android/R$layout;->card_input_widget:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-static {p1}, Lcom/stripe/android/databinding/CardInputWidgetBinding;->bind(Landroid/view/View;)Lcom/stripe/android/databinding/CardInputWidgetBinding;

    move-result-object p0

    return-object p0

    .line 86
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

    .line 79
    iget-object v0, p0, Lcom/stripe/android/databinding/CardInputWidgetBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
