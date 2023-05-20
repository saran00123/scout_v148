.class public final enum Lcom/taobao/accs/utl/ALog$Level;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/utl/ALog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/accs/utl/ALog$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/utl/ALog$Level;

.field public static final enum D:Lcom/taobao/accs/utl/ALog$Level;

.field public static final enum E:Lcom/taobao/accs/utl/ALog$Level;

.field public static final enum I:Lcom/taobao/accs/utl/ALog$Level;

.field public static final enum L:Lcom/taobao/accs/utl/ALog$Level;

.field public static final enum V:Lcom/taobao/accs/utl/ALog$Level;

.field public static final enum W:Lcom/taobao/accs/utl/ALog$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 15
    new-instance v0, Lcom/taobao/accs/utl/ALog$Level;

    const/4 v1, 0x0

    const-string v2, "V"

    invoke-direct {v0, v2, v1}, Lcom/taobao/accs/utl/ALog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->V:Lcom/taobao/accs/utl/ALog$Level;

    new-instance v0, Lcom/taobao/accs/utl/ALog$Level;

    const/4 v2, 0x1

    const-string v3, "D"

    invoke-direct {v0, v3, v2}, Lcom/taobao/accs/utl/ALog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    new-instance v0, Lcom/taobao/accs/utl/ALog$Level;

    const/4 v3, 0x2

    const-string v4, "I"

    invoke-direct {v0, v4, v3}, Lcom/taobao/accs/utl/ALog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    new-instance v0, Lcom/taobao/accs/utl/ALog$Level;

    const/4 v4, 0x3

    const-string v5, "W"

    invoke-direct {v0, v5, v4}, Lcom/taobao/accs/utl/ALog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->W:Lcom/taobao/accs/utl/ALog$Level;

    new-instance v0, Lcom/taobao/accs/utl/ALog$Level;

    const/4 v5, 0x4

    const-string v6, "E"

    invoke-direct {v0, v6, v5}, Lcom/taobao/accs/utl/ALog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    new-instance v0, Lcom/taobao/accs/utl/ALog$Level;

    const/4 v6, 0x5

    const-string v7, "L"

    invoke-direct {v0, v7, v6}, Lcom/taobao/accs/utl/ALog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->L:Lcom/taobao/accs/utl/ALog$Level;

    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [Lcom/taobao/accs/utl/ALog$Level;

    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->V:Lcom/taobao/accs/utl/ALog$Level;

    aput-object v7, v0, v1

    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->W:Lcom/taobao/accs/utl/ALog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->L:Lcom/taobao/accs/utl/ALog$Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/accs/utl/ALog$Level;->$VALUES:[Lcom/taobao/accs/utl/ALog$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/utl/ALog$Level;
    .registers 2

    .line 14
    const-class v0, Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/utl/ALog$Level;

    return-object p0
.end method

.method public static values()[Lcom/taobao/accs/utl/ALog$Level;
    .registers 1

    .line 14
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->$VALUES:[Lcom/taobao/accs/utl/ALog$Level;

    invoke-virtual {v0}, [Lcom/taobao/accs/utl/ALog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/utl/ALog$Level;

    return-object v0
.end method
