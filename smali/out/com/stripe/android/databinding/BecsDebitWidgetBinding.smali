.class public final Lcom/stripe/android/databinding/BecsDebitWidgetBinding;
.super Ljava/lang/Object;
.source "BecsDebitWidgetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final accountNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emailEditText:Lcom/stripe/android/view/EmailEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emailTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mandateAcceptanceTextView:Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameEditText:Lcom/stripe/android/view/StripeEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/stripe/android/view/BecsDebitAccountNumberEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/BecsDebitBsbEditText;Lcom/stripe/android/view/IconTextInputLayout;Lcom/stripe/android/view/EmailEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;Lcom/stripe/android/view/StripeEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/BecsDebitAccountNumberEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/view/BecsDebitBsbEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/view/IconTextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/view/EmailEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/view/StripeEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->rootView:Landroid/view/View;

    .line 60
    iput-object p2, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberEditText:Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    .line 61
    iput-object p3, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->accountNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 62
    iput-object p4, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbEditText:Lcom/stripe/android/view/BecsDebitBsbEditText;

    .line 63
    iput-object p5, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bsbTextInputLayout:Lcom/stripe/android/view/IconTextInputLayout;

    .line 64
    iput-object p6, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailEditText:Lcom/stripe/android/view/EmailEditText;

    .line 65
    iput-object p7, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->emailTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    iput-object p8, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->mandateAcceptanceTextView:Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;

    .line 67
    iput-object p9, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameEditText:Lcom/stripe/android/view/StripeEditText;

    .line 68
    iput-object p10, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->nameTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/stripe/android/databinding/BecsDebitWidgetBinding;
    .registers 14
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 93
    sget v0, Lcom/stripe/android/R$id;->account_number_edit_text:I

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/stripe/android/view/BecsDebitAccountNumberEditText;

    if-eqz v4, :cond_6b

    .line 99
    sget v0, Lcom/stripe/android/R$id;->account_number_text_input_layout:I

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v5, :cond_6b

    .line 105
    sget v0, Lcom/stripe/android/R$id;->bsb_edit_text:I

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/stripe/android/view/BecsDebitBsbEditText;

    if-eqz v6, :cond_6b

    .line 111
    sget v0, Lcom/stripe/android/R$id;->bsb_text_input_layout:I

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/stripe/android/view/IconTextInputLayout;

    if-eqz v7, :cond_6b

    .line 117
    sget v0, Lcom/stripe/android/R$id;->email_edit_text:I

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/stripe/android/view/EmailEditText;

    if-eqz v8, :cond_6b

    .line 123
    sget v0, Lcom/stripe/android/R$id;->email_text_input_layout:I

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v9, :cond_6b

    .line 129
    sget v0, Lcom/stripe/android/R$id;->mandate_acceptance_text_view:I

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;

    if-eqz v10, :cond_6b

    .line 135
    sget v0, Lcom/stripe/android/R$id;->name_edit_text:I

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/stripe/android/view/StripeEditText;

    if-eqz v11, :cond_6b

    .line 141
    sget v0, Lcom/stripe/android/R$id;->name_text_input_layout:I

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v12, :cond_6b

    .line 147
    new-instance v0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;-><init>(Landroid/view/View;Lcom/stripe/android/view/BecsDebitAccountNumberEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/BecsDebitBsbEditText;Lcom/stripe/android/view/IconTextInputLayout;Lcom/stripe/android/view/EmailEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/stripe/android/view/BecsDebitMandateAcceptanceTextView;Lcom/stripe/android/view/StripeEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v0

    .line 151
    :cond_6b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/BecsDebitWidgetBinding;
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

    .line 83
    sget v0, Lcom/stripe/android/R$layout;->becs_debit_widget:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    invoke-static {p1}, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->bind(Landroid/view/View;)Lcom/stripe/android/databinding/BecsDebitWidgetBinding;

    move-result-object p0

    return-object p0

    .line 81
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

    .line 74
    iget-object v0, p0, Lcom/stripe/android/databinding/BecsDebitWidgetBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
