.class public Lcom/alibaba/sdk/android/tbrest/rest/c;
.super Ljava/lang/Object;
.source "RestKeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/tbrest/rest/c$a;,
        Lcom/alibaba/sdk/android/tbrest/rest/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/sdk/android/tbrest/rest/c;


# instance fields
.field private a:Lcom/alibaba/sdk/android/tbrest/rest/c$a;

.field private a:Lcom/alibaba/sdk/android/tbrest/rest/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/rest/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/tbrest/rest/c$b;-><init>(Lcom/alibaba/sdk/android/tbrest/rest/c;Lcom/alibaba/sdk/android/tbrest/rest/c$1;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$b;

    .line 20
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/rest/c$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/tbrest/rest/c$a;-><init>(Lcom/alibaba/sdk/android/tbrest/rest/c;Lcom/alibaba/sdk/android/tbrest/rest/c$1;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/sdk/android/tbrest/rest/c;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/tbrest/rest/c;

    monitor-enter v0

    .line 26
    :try_start_3
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c;

    if-nez v1, :cond_e

    .line 27
    new-instance v1, Lcom/alibaba/sdk/android/tbrest/rest/c;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/tbrest/rest/c;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c;

    .line 29
    :cond_e
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a([Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_5

    .line 36
    iget-object p2, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$a;

    goto :goto_7

    .line 38
    :cond_5
    iget-object p2, p0, Lcom/alibaba/sdk/android/tbrest/rest/c;->a:Lcom/alibaba/sdk/android/tbrest/rest/c$b;

    :goto_7
    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    .line 40
    array-length v0, p1

    if-lez v0, :cond_12

    .line 41
    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method
