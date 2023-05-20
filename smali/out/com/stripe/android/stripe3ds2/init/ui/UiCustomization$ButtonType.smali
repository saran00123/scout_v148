.class public final enum Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

.field public static final enum CANCEL:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

.field public static final enum CONTINUE:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

.field public static final enum NEXT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

.field public static final enum RESEND:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

.field public static final enum SELECT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

.field public static final enum SUBMIT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v1, 0x0

    const-string v2, "SUBMIT"

    invoke-direct {v0, v2, v1}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->SUBMIT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    new-instance v2, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v3, 0x1

    const-string v4, "CONTINUE"

    invoke-direct {v2, v4, v3}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->CONTINUE:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    new-instance v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v5, 0x2

    const-string v6, "NEXT"

    invoke-direct {v4, v6, v5}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->NEXT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    new-instance v6, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v7, 0x3

    const-string v8, "CANCEL"

    invoke-direct {v6, v8, v7}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->CANCEL:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    new-instance v8, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v9, 0x4

    const-string v10, "RESEND"

    invoke-direct {v8, v10, v9}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->RESEND:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    new-instance v10, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v11, 0x5

    const-string v12, "SELECT"

    invoke-direct {v10, v12, v11}, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->SELECT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->$VALUES:[Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;
    .registers 2

    const-class v0, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;
    .registers 1

    sget-object v0, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->$VALUES:[Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {v0}, [Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    return-object v0
.end method
