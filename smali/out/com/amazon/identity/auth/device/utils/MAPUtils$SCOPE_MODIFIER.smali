.class final enum Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;
.super Ljava/lang/Enum;
.source "MAPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/utils/MAPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SCOPE_MODIFIER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

.field public static final enum ALL:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

.field public static final enum LOCAL:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

.field public static final enum REMOTE:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 37
    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    const/4 v1, 0x0

    const-string v2, "LOCAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->LOCAL:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    const/4 v2, 0x1

    const-string v3, "REMOTE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->REMOTE:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    new-instance v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    const/4 v3, 0x2

    const-string v4, "ALL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->ALL:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    sget-object v4, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->LOCAL:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    aput-object v4, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->REMOTE:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->ALL:Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->$VALUES:[Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;
    .registers 2

    .line 37
    const-class v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;
    .registers 1

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->$VALUES:[Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/utils/MAPUtils$SCOPE_MODIFIER;

    return-object v0
.end method
