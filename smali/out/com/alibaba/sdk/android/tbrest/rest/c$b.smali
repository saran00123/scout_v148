.class Lcom/alibaba/sdk/android/tbrest/rest/c$b;
.super Ljava/lang/Object;
.source "RestKeyArraySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/tbrest/rest/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/tbrest/rest/c;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/tbrest/rest/c;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/rest/c$b;->b:Lcom/alibaba/sdk/android/tbrest/rest/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/tbrest/rest/c;Lcom/alibaba/sdk/android/tbrest/rest/c$1;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/tbrest/rest/c$b;-><init>(Lcom/alibaba/sdk/android/tbrest/rest/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 48
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/tbrest/rest/c$b;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 53
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 54
    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
