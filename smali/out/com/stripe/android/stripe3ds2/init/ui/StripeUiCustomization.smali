.class public final Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;",
            "Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization$a;

    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization$a;-><init>()V

    sput-object v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;-><init>()V

    sget v0, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {p0, p1, v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/app/Activity;I)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010433

    invoke-virtual {p0, p1, v1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1010434

    invoke-virtual {p0, p1, v2}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1010036

    invoke-virtual {p0, v0, v3}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x1010098

    invoke-virtual {p0, p1, v3}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1010435

    invoke-virtual {p0, p1, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x101009a

    invoke-virtual {p0, p1, v5}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    invoke-direct {v5}, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;-><init>()V

    iput-object v5, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    new-instance v5, Lcom/stripe/android/stripe3ds2/init/ui/StripeLabelCustomization;

    invoke-direct {v5}, Lcom/stripe/android/stripe3ds2/init/ui/StripeLabelCustomization;-><init>()V

    iput-object v5, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    new-instance v5, Lcom/stripe/android/stripe3ds2/init/ui/StripeTextBoxCustomization;

    invoke-direct {v5}, Lcom/stripe/android/stripe3ds2/init/ui/StripeTextBoxCustomization;-><init>()V

    iput-object v5, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    if-eqz p1, :cond_4d

    invoke-interface {v5, p1}, Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;->setHintTextColor(Ljava/lang/String;)V

    :cond_4d
    new-instance p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    invoke-direct {p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;-><init>()V

    new-instance v5, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    invoke-direct {v5}, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;-><init>()V

    if-eqz v0, :cond_61

    iget-object v6, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v6, v0}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->setTextColor(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->setTextColor(Ljava/lang/String;)V

    :cond_61
    if-eqz v1, :cond_68

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v0, v1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setBackgroundColor(Ljava/lang/String;)V

    :cond_68
    if-eqz v2, :cond_6f

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v0, v2}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setStatusBarColor(Ljava/lang/String;)V

    :cond_6f
    if-eqz v3, :cond_83

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    invoke-interface {v0, v3}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->setTextColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    invoke-interface {v0, v3}, Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;->setHeadingTextColor(Ljava/lang/String;)V

    invoke-interface {v5, v3}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->setTextColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    invoke-interface {v0, v3}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->setTextColor(Ljava/lang/String;)V

    :cond_83
    if-eqz v4, :cond_98

    invoke-virtual {p0, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setAccentColor(Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;-><init>()V

    invoke-interface {v0, v4}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->setTextColor(Ljava/lang/String;)V

    sget-object v1, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->RESEND:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {p0, v0, v1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V

    invoke-interface {v5, v4}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->setBackgroundColor(Ljava/lang/String;)V

    :cond_98
    sget-object v0, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->CANCEL:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V

    sget-object p1, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->NEXT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {p0, v5, p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V

    sget-object p1, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->CONTINUE:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {p0, v5, p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V

    sget-object p1, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->SUBMIT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {p0, v5, p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V

    sget-object p1, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->SELECT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {p0, v5, p1}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    const-class v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    const-class v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeLabelCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    const-class v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeTextBoxCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    const-class v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    if-eqz v3, :cond_4e

    iget-object v4, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    invoke-static {v2}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->valueOf(Ljava/lang/String;)Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_6c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    const-class v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_87
    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    if-eqz v2, :cond_87

    iget-object v3, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    :cond_a1
    return-void
.end method

.method public static createWithAppTheme(Landroid/app/Activity;)Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
    .registers 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;I)Landroid/content/Context;
    .registers 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_18

    new-instance p2, Landroidx/appcompat/view/ContextThemeWrapper;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p2, p1, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object p2

    :cond_18
    return-object p1
.end method

.method public final a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_20

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_19

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_1b

    :cond_19
    iget p1, v0, Landroid/util/TypedValue;->data:I

    :goto_1b
    invoke-static {p1}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->colorIntToHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_4b

    instance-of v2, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    if-eqz v2, :cond_4c

    check-cast p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    .line 1
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    iget-object v3, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 5
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    iget-object v3, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 7
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    iget-object v3, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    .line 8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 9
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 11
    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    .line 12
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    move p1, v1

    goto :goto_49

    :cond_48
    move p1, v0

    :goto_49
    if-eqz p1, :cond_4c

    :cond_4b
    move v0, v1

    :cond_4c
    return v0
.end method

.method public getAccentColor()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
    .registers 3
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    return-object p1
.end method

.method public getButtonCustomization(Ljava/lang/String;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    return-object p1
.end method

.method public getLabelCustomization()Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    return-object v0
.end method

.method public getTextBoxCustomization()Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    return-object v0
.end method

.method public getToolbarCustomization()Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, La/a/a/a/g/c;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccentColor(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->requireValidColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    return-void
.end method

.method public setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)V
    .registers 4
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLabelCustomization(Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V
    .registers 2
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    return-void
.end method

.method public setTextBoxCustomization(Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;)V
    .registers 2
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    return-void
.end method

.method public setToolbarCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;)V
    .registers 2
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/android/stripe3ds2/exceptions/InvalidInputException;
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->a:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    check-cast p2, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->b:Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    check-cast p2, Lcom/stripe/android/stripe3ds2/init/ui/StripeLabelCustomization;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->c:Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;

    check-cast p2, Lcom/stripe/android/stripe3ds2/init/ui/StripeTextBoxCustomization;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2a

    :cond_4a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/stripe3ds2/init/ui/StripeButtonCustomization;

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_5c

    :cond_78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
