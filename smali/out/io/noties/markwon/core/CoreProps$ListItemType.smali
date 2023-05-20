.class public final enum Lio/noties/markwon/core/CoreProps$ListItemType;
.super Ljava/lang/Enum;
.source "CoreProps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/core/CoreProps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/noties/markwon/core/CoreProps$ListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/noties/markwon/core/CoreProps$ListItemType;

.field public static final enum BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

.field public static final enum ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 28
    new-instance v0, Lio/noties/markwon/core/CoreProps$ListItemType;

    const/4 v1, 0x0

    const-string v2, "BULLET"

    invoke-direct {v0, v2, v1}, Lio/noties/markwon/core/CoreProps$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    .line 29
    new-instance v0, Lio/noties/markwon/core/CoreProps$ListItemType;

    const/4 v2, 0x1

    const-string v3, "ORDERED"

    invoke-direct {v0, v3, v2}, Lio/noties/markwon/core/CoreProps$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Lio/noties/markwon/core/CoreProps$ListItemType;

    sget-object v3, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    aput-object v3, v0, v1

    sget-object v1, Lio/noties/markwon/core/CoreProps$ListItemType;->ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;

    aput-object v1, v0, v2

    sput-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->$VALUES:[Lio/noties/markwon/core/CoreProps$ListItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/noties/markwon/core/CoreProps$ListItemType;
    .registers 2

    .line 27
    const-class v0, Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/noties/markwon/core/CoreProps$ListItemType;

    return-object p0
.end method

.method public static values()[Lio/noties/markwon/core/CoreProps$ListItemType;
    .registers 1

    .line 27
    sget-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->$VALUES:[Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-virtual {v0}, [Lio/noties/markwon/core/CoreProps$ListItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/noties/markwon/core/CoreProps$ListItemType;

    return-object v0
.end method
