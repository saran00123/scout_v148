.class public final Lcom/stripe/android/view/CardInputWidget;
.super Landroid/widget/LinearLayout;
.source "CardInputWidget.kt"

# interfaces
.implements Lcom/stripe/android/view/CardWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;,
        Lcom/stripe/android/view/CardInputWidget$CardNumberSlideStartAnimation;,
        Lcom/stripe/android/view/CardInputWidget$ExpiryDateSlideStartAnimation;,
        Lcom/stripe/android/view/CardInputWidget$CvcSlideStartAnimation;,
        Lcom/stripe/android/view/CardInputWidget$PostalCodeSlideStartAnimation;,
        Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;,
        Lcom/stripe/android/view/CardInputWidget$ExpiryDateSlideEndAnimation;,
        Lcom/stripe/android/view/CardInputWidget$CvcSlideEndAnimation;,
        Lcom/stripe/android/view/CardInputWidget$PostalCodeSlideEndAnimation;,
        Lcom/stripe/android/view/CardInputWidget$AnimationEndListener;,
        Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;,
        Lcom/stripe/android/view/CardInputWidget$DefaultLayoutWidthCalculator;,
        Lcom/stripe/android/view/CardInputWidget$Field;,
        Lcom/stripe/android/view/CardInputWidget$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardInputWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardInputWidget.kt\ncom/stripe/android/view/CardInputWidget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 5 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,1275:1\n1#2:1276\n734#3:1277\n825#3,2:1278\n1819#3,2:1280\n734#3:1282\n825#3,2:1283\n1819#3,2:1285\n1819#3,2:1287\n1819#3,2:1289\n1711#3,3:1291\n1819#3,2:1294\n1819#3,2:1296\n1690#3,3:1298\n1819#3,2:1301\n1819#3:1303\n1820#3:1318\n1819#3,2:1319\n58#4:1304\n71#4,10:1305\n93#4,3:1315\n33#5,3:1321\n33#5,3:1324\n*E\n*S KotlinDebug\n*F\n+ 1 CardInputWidget.kt\ncom/stripe/android/view/CardInputWidget\n*L\n234#1:1277\n234#1,2:1278\n235#1,2:1280\n294#1:1282\n294#1,2:1283\n295#1,2:1285\n425#1,2:1287\n429#1,2:1289\n499#1,3:1291\n503#1,2:1294\n512#1,2:1296\n551#1,3:1298\n754#1,2:1301\n811#1:1303\n811#1:1318\n990#1,2:1319\n812#1:1304\n812#1,10:1305\n812#1,3:1315\n343#1,3:1321\n376#1,3:1324\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a7\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013*\u00013\u0018\u0000 \u00df\u00012\u00020\u00012\u00020\u0002:\u001c\u00db\u0001\u00dc\u0001\u00dd\u0001\u00de\u0001\u00df\u0001\u00e0\u0001\u00e1\u0001\u00e2\u0001\u00e3\u0001\u00e4\u0001\u00e5\u0001\u00e6\u0001\u00e7\u0001\u00e8\u0001B%\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\n\u0010\u009b\u0001\u001a\u00030\u009a\u0001H\u0016J\u0018\u0010\u009c\u0001\u001a\u00020E2\u0007\u0010\u009d\u0001\u001a\u00020\u0008H\u0001\u00a2\u0006\u0003\u0008\u009e\u0001J\u001b\u0010\u009f\u0001\u001a\u00020\u00082\u0007\u0010\u00a0\u0001\u001a\u00020E2\u0007\u0010\u00a1\u0001\u001a\u00020\u000cH\u0002J\u001d\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u00a3\u00012\u0007\u0010\u00a4\u0001\u001a\u00020\u00082\u0006\u0010M\u001a\u00020\u0008H\u0002J\u0014\u0010\u00a5\u0001\u001a\u00030\u009a\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\t\u0010\u00a6\u0001\u001a\u00020_H\u0016J\n\u0010\u00a7\u0001\u001a\u00030\u009a\u0001H\u0014J\u0013\u0010\u00a8\u0001\u001a\u00020_2\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u0001H\u0016J7\u0010\u00ab\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u00ac\u0001\u001a\u00020_2\u0007\u0010\u00ad\u0001\u001a\u00020\u00082\u0007\u0010\u00ae\u0001\u001a\u00020\u00082\u0007\u0010\u00af\u0001\u001a\u00020\u00082\u0007\u0010\u00b0\u0001\u001a\u00020\u0008H\u0014J\u0014\u0010\u00b1\u0001\u001a\u00030\u009a\u00012\u0008\u0010\u00b2\u0001\u001a\u00030\u00b3\u0001H\u0014J\n\u0010\u00b4\u0001\u001a\u00030\u00b3\u0001H\u0014J\n\u0010\u00b5\u0001\u001a\u00030\u009a\u0001H\u0002J\n\u0010\u00b6\u0001\u001a\u00030\u009a\u0001H\u0002J\u0013\u0010\u00b7\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u00b8\u0001\u001a\u00020EH\u0016J\u0015\u0010\u00b9\u0001\u001a\u00030\u009a\u00012\t\u0010\u00ba\u0001\u001a\u0004\u0018\u00010%H\u0016J\u0015\u0010\u00bb\u0001\u001a\u00030\u009a\u00012\t\u0010\u00bc\u0001\u001a\u0004\u0018\u00010EH\u0016J\u0016\u0010\u00bd\u0001\u001a\u00030\u009a\u00012\n\u0010\u00be\u0001\u001a\u0005\u0018\u00010\u00bf\u0001H\u0016J\u0015\u0010\u00c0\u0001\u001a\u00030\u009a\u00012\t\u0010\u00c1\u0001\u001a\u0004\u0018\u000101H\u0016J\u0015\u0010\u00c2\u0001\u001a\u00030\u009a\u00012\t\u0010\u00c3\u0001\u001a\u0004\u0018\u00010EH\u0016J\u0016\u0010\u00c4\u0001\u001a\u00030\u009a\u00012\n\u0010\u00c5\u0001\u001a\u0005\u0018\u00010\u00bf\u0001H\u0016J\u0013\u0010\u00c6\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u00a6\u0001\u001a\u00020_H\u0016J \u0010\u00c7\u0001\u001a\u00030\u009a\u00012\t\u0008\u0001\u0010\u00c8\u0001\u001a\u00020\u00082\t\u0008\u0001\u0010\u00c9\u0001\u001a\u00020\u0008H\u0016J\u0016\u0010\u00ca\u0001\u001a\u00030\u009a\u00012\n\u0010\u00cb\u0001\u001a\u0005\u0018\u00010\u00bf\u0001H\u0016J\u001b\u0010\u00cc\u0001\u001a\u00030\u009a\u00012\t\u0010\u00cd\u0001\u001a\u0004\u0018\u00010EH\u0000\u00a2\u0006\u0003\u0008\u00ce\u0001J\u0016\u0010\u00cf\u0001\u001a\u00030\u009a\u00012\n\u0010\u00d0\u0001\u001a\u0005\u0018\u00010\u00bf\u0001H\u0016J\u001a\u0010\u00d1\u0001\u001a\u00030\u009a\u00012\u000e\u0010\u00d2\u0001\u001a\t\u0012\u0005\u0012\u00030\u00d3\u00010\u000bH\u0002J&\u0010\u00d4\u0001\u001a\u00030\u009a\u00012\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u00012\u0007\u0010\u00d7\u0001\u001a\u00020\u00082\u0007\u0010\u00d8\u0001\u001a\u00020\u0008H\u0002J,\u0010\u00d9\u0001\u001a\u00030\u009a\u00012\u0006\u0010^\u001a\u00020_2\u0008\u0008\u0002\u0010P\u001a\u00020\u00082\u0008\u0008\u0002\u0010M\u001a\u00020\u0008H\u0001\u00a2\u0006\u0003\u0008\u00da\u0001R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00168VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\u0018\u001a\u0004\u0008\"\u0010#R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\'X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010,\u001a\u0004\u0018\u00010-8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u000203X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00104R\u000e\u00105\u001a\u000206X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u0018\u001a\u0004\u00089\u0010:R\u0016\u0010;\u001a\u0004\u0018\u00010<8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0014\u0010?\u001a\u00020@X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR\u000e\u0010C\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010D\u001a\u00020E8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010GR\u0014\u0010H\u001a\u00020IX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u000e\u0010L\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010M\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0014\u0010P\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010OR \u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00080SX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u000e\u0010X\u001a\u00020EX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020[0Z8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]R\u001a\u0010^\u001a\u00020_X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR\u000e\u0010d\u001a\u00020_X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010e\u001a\u00020fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u0016\u0010k\u001a\u0004\u0018\u00010l8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010nR\u0016\u0010o\u001a\u0004\u0018\u00010p8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010rR\u0014\u0010s\u001a\u00020E8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010GR\u0014\u0010u\u001a\u00020vX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008w\u0010xR\u0014\u0010y\u001a\u00020zX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008{\u0010|R.\u0010~\u001a\u00020_2\u0006\u0010}\u001a\u00020_8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001\u001a\u0004\u0008\u007f\u0010a\"\u0005\u0008\u0080\u0001\u0010cR\u001d\u0010\u0083\u0001\u001a\u00020_X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0084\u0001\u0010a\"\u0005\u0008\u0085\u0001\u0010cR\u0017\u0010\u0086\u0001\u001a\u00020+X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u0089\u0001\u001a\u0004\u0018\u00010E8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u008a\u0001\u0010GR%\u0010\u008b\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0000X\u0081\u0004\u00a2\u0006\u0010\n\u0000\u0012\u0005\u0008\u008c\u0001\u0010\u0018\u001a\u0005\u0008\u008d\u0001\u0010:R1\u0010\u008f\u0001\u001a\u00020_2\u0007\u0010\u008e\u0001\u001a\u00020_8\u0000@BX\u0081\u000e\u00a2\u0006\u0017\n\u0000\u0012\u0005\u0008\u0090\u0001\u0010\u0018\u001a\u0005\u0008\u0091\u0001\u0010a\"\u0005\u0008\u0092\u0001\u0010cR0\u0010\u0093\u0001\u001a\u00020_2\u0006\u0010}\u001a\u00020_8F@FX\u0086\u008e\u0002\u00a2\u0006\u0016\n\u0006\u0008\u0096\u0001\u0010\u0082\u0001\u001a\u0005\u0008\u0094\u0001\u0010a\"\u0005\u0008\u0095\u0001\u0010cR\u0010\u0010\u0097\u0001\u001a\u00030\u0098\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00e9\u0001"
    }
    d2 = {
        "Lcom/stripe/android/view/CardInputWidget;",
        "Landroid/widget/LinearLayout;",
        "Lcom/stripe/android/view/CardWidget;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "allFields",
        "",
        "Lcom/stripe/android/view/StripeEditText;",
        "billingDetails",
        "Lcom/stripe/android/model/PaymentMethod$BillingDetails;",
        "getBillingDetails",
        "()Lcom/stripe/android/model/PaymentMethod$BillingDetails;",
        "brand",
        "Lcom/stripe/android/model/CardBrand;",
        "getBrand",
        "()Lcom/stripe/android/model/CardBrand;",
        "card",
        "Lcom/stripe/android/model/Card;",
        "getCard$annotations",
        "()V",
        "getCard",
        "()Lcom/stripe/android/model/Card;",
        "cardBrandView",
        "Lcom/stripe/android/view/CardBrandView;",
        "getCardBrandView$stripe_release",
        "()Lcom/stripe/android/view/CardBrandView;",
        "cardBuilder",
        "Lcom/stripe/android/model/Card$Builder;",
        "getCardBuilder$annotations",
        "getCardBuilder",
        "()Lcom/stripe/android/model/Card$Builder;",
        "cardInputListener",
        "Lcom/stripe/android/view/CardInputListener;",
        "cardNumberEditText",
        "Lcom/stripe/android/view/CardNumberEditText;",
        "getCardNumberEditText$stripe_release",
        "()Lcom/stripe/android/view/CardNumberEditText;",
        "cardNumberTextInputLayout",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "cardParams",
        "Lcom/stripe/android/model/CardParams;",
        "getCardParams",
        "()Lcom/stripe/android/model/CardParams;",
        "cardValidCallback",
        "Lcom/stripe/android/view/CardValidCallback;",
        "cardValidTextWatcher",
        "com/stripe/android/view/CardInputWidget$cardValidTextWatcher$1",
        "Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;",
        "containerLayout",
        "Landroid/widget/FrameLayout;",
        "currentFields",
        "getCurrentFields$stripe_release$annotations",
        "getCurrentFields$stripe_release",
        "()Ljava/util/List;",
        "cvc",
        "Lcom/stripe/android/cards/Cvc$Validated;",
        "getCvc",
        "()Lcom/stripe/android/cards/Cvc$Validated;",
        "cvcEditText",
        "Lcom/stripe/android/view/CvcEditText;",
        "getCvcEditText$stripe_release",
        "()Lcom/stripe/android/view/CvcEditText;",
        "cvcNumberTextInputLayout",
        "cvcPlaceHolder",
        "",
        "getCvcPlaceHolder",
        "()Ljava/lang/String;",
        "expiryDateEditText",
        "Lcom/stripe/android/view/ExpiryDateEditText;",
        "getExpiryDateEditText$stripe_release",
        "()Lcom/stripe/android/view/ExpiryDateEditText;",
        "expiryDateTextInputLayout",
        "frameStart",
        "getFrameStart",
        "()I",
        "frameWidth",
        "getFrameWidth",
        "frameWidthSupplier",
        "Lkotlin/Function0;",
        "getFrameWidthSupplier$stripe_release",
        "()Lkotlin/jvm/functions/Function0;",
        "setFrameWidthSupplier$stripe_release",
        "(Lkotlin/jvm/functions/Function0;)V",
        "hiddenCardText",
        "invalidFields",
        "",
        "Lcom/stripe/android/view/CardValidCallback$Fields;",
        "getInvalidFields",
        "()Ljava/util/Set;",
        "isShowingFullCard",
        "",
        "isShowingFullCard$stripe_release",
        "()Z",
        "setShowingFullCard$stripe_release",
        "(Z)V",
        "isViewInitialized",
        "layoutWidthCalculator",
        "Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;",
        "getLayoutWidthCalculator$stripe_release",
        "()Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;",
        "setLayoutWidthCalculator$stripe_release",
        "(Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;)V",
        "paymentMethodCard",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        "getPaymentMethodCard",
        "()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        "paymentMethodCreateParams",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "getPaymentMethodCreateParams",
        "()Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "peekCardText",
        "getPeekCardText",
        "placement",
        "Lcom/stripe/android/view/CardInputWidgetPlacement;",
        "getPlacement$stripe_release",
        "()Lcom/stripe/android/view/CardInputWidgetPlacement;",
        "postalCodeEditText",
        "Lcom/stripe/android/view/PostalCodeEditText;",
        "getPostalCodeEditText$stripe_release",
        "()Lcom/stripe/android/view/PostalCodeEditText;",
        "<set-?>",
        "postalCodeEnabled",
        "getPostalCodeEnabled",
        "setPostalCodeEnabled",
        "postalCodeEnabled$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "postalCodeRequired",
        "getPostalCodeRequired",
        "setPostalCodeRequired",
        "postalCodeTextInputLayout",
        "getPostalCodeTextInputLayout$stripe_release",
        "()Lcom/google/android/material/textfield/TextInputLayout;",
        "postalCodeValue",
        "getPostalCodeValue",
        "requiredFields",
        "getRequiredFields$stripe_release$annotations",
        "getRequiredFields$stripe_release",
        "value",
        "shouldShowErrorIcon",
        "getShouldShowErrorIcon$stripe_release$annotations",
        "getShouldShowErrorIcon$stripe_release",
        "setShouldShowErrorIcon",
        "usZipCodeRequired",
        "getUsZipCodeRequired",
        "setUsZipCodeRequired",
        "usZipCodeRequired$delegate",
        "viewBinding",
        "Lcom/stripe/android/databinding/CardInputWidgetBinding;",
        "applyAttributes",
        "",
        "clear",
        "createHiddenCardText",
        "panLength",
        "createHiddenCardText$stripe_release",
        "getDesiredWidthInPixels",
        "text",
        "editText",
        "getFocusField",
        "Lcom/stripe/android/view/CardInputWidget$Field;",
        "touchX",
        "initView",
        "isEnabled",
        "onFinishInflate",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onRestoreInstanceState",
        "state",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "scrollEnd",
        "scrollStart",
        "setCardHint",
        "cardHint",
        "setCardInputListener",
        "listener",
        "setCardNumber",
        "cardNumber",
        "setCardNumberTextWatcher",
        "cardNumberTextWatcher",
        "Landroid/text/TextWatcher;",
        "setCardValidCallback",
        "callback",
        "setCvcCode",
        "cvcCode",
        "setCvcNumberTextWatcher",
        "cvcNumberTextWatcher",
        "setEnabled",
        "setExpiryDate",
        "month",
        "year",
        "setExpiryDateTextWatcher",
        "expiryDateTextWatcher",
        "setPostalCode",
        "postalCode",
        "setPostalCode$stripe_release",
        "setPostalCodeTextWatcher",
        "postalCodeTextWatcher",
        "startSlideAnimation",
        "animations",
        "Landroid/view/animation/Animation;",
        "updateFieldLayout",
        "view",
        "Landroid/view/View;",
        "width",
        "marginStart",
        "updateSpaceSizes",
        "updateSpaceSizes$stripe_release",
        "AnimationEndListener",
        "CardFieldAnimation",
        "CardNumberSlideEndAnimation",
        "CardNumberSlideStartAnimation",
        "Companion",
        "CvcSlideEndAnimation",
        "CvcSlideStartAnimation",
        "DefaultLayoutWidthCalculator",
        "ExpiryDateSlideEndAnimation",
        "ExpiryDateSlideStartAnimation",
        "Field",
        "LayoutWidthCalculator",
        "PostalCodeSlideEndAnimation",
        "PostalCodeSlideStartAnimation",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final CVC_PLACEHOLDER_AMEX:Ljava/lang/String; = "2345"

.field private static final CVC_PLACEHOLDER_COMMON:Ljava/lang/String; = "CVC"

.field public static final Companion:Lcom/stripe/android/view/CardInputWidget$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_READER_ID:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private static final FULL_SIZING_CARD_TEXT:Ljava/lang/String; = "4242 4242 4242 4242 424"

.field private static final FULL_SIZING_DATE_TEXT:Ljava/lang/String; = "MM/MM"

.field private static final FULL_SIZING_POSTAL_CODE_TEXT:Ljava/lang/String; = "1234567890"

.field public static final LOGGING_TOKEN:Ljava/lang/String; = "CardInputView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATE_CARD_VIEWED:Ljava/lang/String; = "state_card_viewed"

.field private static final STATE_POSTAL_CODE_ENABLED:Ljava/lang/String; = "state_postal_code_enabled"

.field private static final STATE_SUPER_STATE:Ljava/lang/String; = "state_super_state"


# instance fields
.field private final allFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/view/StripeEditText;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic cardBrandView:Lcom/stripe/android/view/CardBrandView;

.field private cardInputListener:Lcom/stripe/android/view/CardInputListener;

.field private final synthetic cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

.field private final cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private cardValidCallback:Lcom/stripe/android/view/CardValidCallback;

.field private final cardValidTextWatcher:Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;

.field private final containerLayout:Landroid/widget/FrameLayout;

.field private final synthetic cvcEditText:Lcom/stripe/android/view/CvcEditText;

.field private final cvcNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final synthetic expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

.field private final expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private synthetic frameWidthSupplier:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenCardText:Ljava/lang/String;

.field private synthetic isShowingFullCard:Z

.field private isViewInitialized:Z

.field private synthetic layoutWidthCalculator:Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;

.field private final placement:Lcom/stripe/android/view/CardInputWidgetPlacement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final synthetic postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

.field private final postalCodeEnabled$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private postalCodeRequired:Z

.field private final postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final synthetic requiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/view/StripeEditText;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowErrorIcon:Z

.field private final usZipCodeRequired$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/stripe/android/view/CardInputWidget;

    const/4 v3, 0x0

    const-string v4, "postalCodeEnabled"

    const-string v5, "getPostalCodeEnabled()Z"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/stripe/android/view/CardInputWidget;

    const-string v4, "usZipCodeRequired"

    const-string v5, "getUsZipCodeRequired()Z"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/view/CardInputWidget;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/android/view/CardInputWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/CardInputWidget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/CardInputWidget;->Companion:Lcom/stripe/android/view/CardInputWidget$Companion;

    .line 1252
    sget v0, Lcom/stripe/android/R$id;->stripe_default_reader_id:I

    sput v0, Lcom/stripe/android/view/CardInputWidget;->DEFAULT_READER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/CardInputWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/CardInputWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 26
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 60
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 58
    invoke-static {v1, v2}, Lcom/stripe/android/databinding/CardInputWidgetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/CardInputWidgetBinding;

    move-result-object v1

    const-string v2, "CardInputWidgetBinding.i\u2026text),\n        this\n    )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    .line 63
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->container:Landroid/widget/FrameLayout;

    const-string v2, "viewBinding.container"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->containerLayout:Landroid/widget/FrameLayout;

    .line 66
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    const-string v2, "viewBinding.cardBrandView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    .line 68
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "viewBinding.cardNumberTextInputLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 69
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "viewBinding.expiryDateTextInputLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 70
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cvcTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "viewBinding.cvcTextInputLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cvcNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 71
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "viewBinding.postalCodeTextInputLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 74
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    const-string v2, "viewBinding.cardNumberEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    .line 77
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    const-string v2, "viewBinding.expiryDateEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    .line 80
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    const-string v2, "viewBinding.cvcEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    .line 83
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->viewBinding:Lcom/stripe/android/databinding/CardInputWidgetBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/CardInputWidgetBinding;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    const-string v2, "viewBinding.postalCodeEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    .line 87
    new-instance v1, Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;

    invoke-direct {v1, v0}, Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardValidTextWatcher:Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, v0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    .line 126
    new-instance v2, Lcom/stripe/android/view/CardInputWidget$DefaultLayoutWidthCalculator;

    invoke-direct {v2}, Lcom/stripe/android/view/CardInputWidget$DefaultLayoutWidthCalculator;-><init>()V

    check-cast v2, Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;

    iput-object v2, v0, Lcom/stripe/android/view/CardInputWidget;->layoutWidthCalculator:Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;

    .line 128
    new-instance v2, Lcom/stripe/android/view/CardInputWidgetPlacement;

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffff

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/stripe/android/view/CardInputWidgetPlacement;-><init>(IIIIIIIIIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 343
    sget-object v2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 344
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1321
    new-instance v3, Lcom/stripe/android/view/CardInputWidget$$special$$inlined$observable$1;

    invoke-direct {v3, v2, v2, v0}, Lcom/stripe/android/view/CardInputWidget$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v3, Lkotlin/properties/ReadWriteProperty;

    .line 1323
    iput-object v3, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEnabled$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 376
    sget-object v2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    const/4 v2, 0x0

    .line 377
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1324
    new-instance v4, Lcom/stripe/android/view/CardInputWidget$$special$$inlined$observable$2;

    invoke-direct {v4, v3, v3, v0}, Lcom/stripe/android/view/CardInputWidget$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v4, Lkotlin/properties/ReadWriteProperty;

    .line 1326
    iput-object v4, v0, Lcom/stripe/android/view/CardInputWidget;->usZipCodeRequired$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/view/CardInputWidget;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_eb

    .line 400
    sget v3, Lcom/stripe/android/view/CardInputWidget;->DEFAULT_READER_ID:I

    invoke-virtual {v0, v3}, Lcom/stripe/android/view/CardInputWidget;->setId(I)V

    .line 403
    :cond_eb
    invoke-virtual {v0, v2}, Lcom/stripe/android/view/CardInputWidget;->setOrientation(I)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/view/CardInputWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/stripe/android/R$dimen;->stripe_card_widget_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/stripe/android/view/CardInputWidget;->setMinimumWidth(I)V

    .line 406
    new-instance v3, Lcom/stripe/android/view/CardInputWidget$1;

    invoke-direct {v3, v0}, Lcom/stripe/android/view/CardInputWidget$1;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    iput-object v3, v0, Lcom/stripe/android/view/CardInputWidget;->frameWidthSupplier:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x3

    .line 408
    new-array v3, v3, [Lcom/stripe/android/view/StripeEditText;

    .line 409
    iget-object v4, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v4, Lcom/stripe/android/view/StripeEditText;

    aput-object v4, v3, v2

    .line 410
    iget-object v2, v0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    .line 411
    iget-object v2, v0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    aput-object v2, v3, v1

    .line 408
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    .line 413
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->allFields:Ljava/util/List;

    move-object/from16 v1, p2

    .line 415
    invoke-direct {v0, v1}, Lcom/stripe/android/view/CardInputWidget;->initView(Landroid/util/AttributeSet;)V

    .line 1033
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/CardNumberEditText;->getPanLength$stripe_release()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidget;->createHiddenCardText$stripe_release(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->hiddenCardText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 55
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 56
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardInputWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getBrand$p(Lcom/stripe/android/view/CardInputWidget;)Lcom/stripe/android/model/CardBrand;
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getBrand()Lcom/stripe/android/model/CardBrand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardInputListener$p(Lcom/stripe/android/view/CardInputWidget;)Lcom/stripe/android/view/CardInputListener;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/stripe/android/view/CardInputWidget;->cardInputListener:Lcom/stripe/android/view/CardInputListener;

    return-object p0
.end method

.method public static final synthetic access$getCardValidCallback$p(Lcom/stripe/android/view/CardInputWidget;)Lcom/stripe/android/view/CardValidCallback;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/stripe/android/view/CardInputWidget;->cardValidCallback:Lcom/stripe/android/view/CardValidCallback;

    return-object p0
.end method

.method public static final synthetic access$getContainerLayout$p(Lcom/stripe/android/view/CardInputWidget;)Landroid/widget/FrameLayout;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/stripe/android/view/CardInputWidget;->containerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getHiddenCardText$p(Lcom/stripe/android/view/CardInputWidget;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/stripe/android/view/CardInputWidget;->hiddenCardText:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getInvalidFields$p(Lcom/stripe/android/view/CardInputWidget;)Ljava/util/Set;
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getInvalidFields()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShouldShowErrorIcon$p(Lcom/stripe/android/view/CardInputWidget;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/stripe/android/view/CardInputWidget;->shouldShowErrorIcon:Z

    return p0
.end method

.method public static final synthetic access$scrollEnd(Lcom/stripe/android/view/CardInputWidget;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->scrollEnd()V

    return-void
.end method

.method public static final synthetic access$scrollStart(Lcom/stripe/android/view/CardInputWidget;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->scrollStart()V

    return-void
.end method

.method public static final synthetic access$setCardInputListener$p(Lcom/stripe/android/view/CardInputWidget;Lcom/stripe/android/view/CardInputListener;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardInputListener:Lcom/stripe/android/view/CardInputListener;

    return-void
.end method

.method public static final synthetic access$setCardValidCallback$p(Lcom/stripe/android/view/CardInputWidget;Lcom/stripe/android/view/CardValidCallback;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardValidCallback:Lcom/stripe/android/view/CardValidCallback;

    return-void
.end method

.method public static final synthetic access$setHiddenCardText$p(Lcom/stripe/android/view/CardInputWidget;Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->hiddenCardText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setShouldShowErrorIcon$p(Lcom/stripe/android/view/CardInputWidget;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/stripe/android/view/CardInputWidget;->setShouldShowErrorIcon(Z)V

    return-void
.end method

.method private final applyAttributes(Landroid/util/AttributeSet;)V
    .registers 5

    .line 851
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 853
    sget-object v1, Lcom/stripe/android/R$styleable;->CardElement:[I

    const/4 v2, 0x0

    .line 851
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.theme.obtainStyl\u2026,\n            0\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    :try_start_19
    sget v0, Lcom/stripe/android/R$styleable;->CardElement_shouldShowPostalCode:I

    const/4 v1, 0x1

    .line 859
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardInputWidget;->setPostalCodeEnabled(Z)V

    .line 864
    sget v0, Lcom/stripe/android/R$styleable;->CardElement_shouldRequirePostalCode:I

    .line 863
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeRequired:Z

    .line 868
    sget v0, Lcom/stripe/android/R$styleable;->CardElement_shouldRequireUsZipCode:I

    .line 867
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardInputWidget;->setUsZipCodeRequired(Z)V
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_38

    .line 872
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_38
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private final getBillingDetails()Lcom/stripe/android/model/PaymentMethod$BillingDetails;
    .registers 15

    .line 185
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 186
    new-instance v13, Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    .line 187
    new-instance v9, Lcom/stripe/android/model/Address;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2f

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/stripe/android/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    move-object v6, v13

    move-object v7, v9

    move-object v9, v0

    .line 186
    invoke-direct/range {v6 .. v12}, Lcom/stripe/android/model/PaymentMethod$BillingDetails;-><init>(Lcom/stripe/android/model/Address;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_23

    :cond_22
    const/4 v13, 0x0

    :goto_23
    return-object v13
.end method

.method private final getBrand()Lcom/stripe/android/model/CardBrand;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->getCardBrand()Lcom/stripe/android/model/CardBrand;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCard$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use cardParams"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cardParams"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getCardBuilder$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use cardParams"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "cardParams"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static synthetic getCurrentFields$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getCvc()Lcom/stripe/android/cards/Cvc$Validated;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CvcEditText;->getCvc$stripe_release()Lcom/stripe/android/cards/Cvc$Validated;

    move-result-object v0

    return-object v0
.end method

.method private final getCvcPlaceHolder()Ljava/lang/String;
    .registers 3

    .line 1037
    sget-object v0, Lcom/stripe/android/model/CardBrand;->AmericanExpress:Lcom/stripe/android/model/CardBrand;

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getBrand()Lcom/stripe/android/model/CardBrand;

    move-result-object v1

    if-ne v0, v1, :cond_b

    const-string v0, "2345"

    goto :goto_d

    :cond_b
    const-string v0, "CVC"

    :goto_d
    return-object v0
.end method

.method private final getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I
    .registers 5

    .line 700
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->layoutWidthCalculator:Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;

    invoke-virtual {p2}, Lcom/stripe/android/view/StripeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const-string v1, "editText.paint"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;->calculate(Ljava/lang/String;Landroid/text/TextPaint;)I

    move-result p1

    return p1
.end method

.method private final getFocusField(II)Lcom/stripe/android/view/CardInputWidget$Field;
    .registers 6

    .line 637
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 640
    iget-boolean v1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    .line 641
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v2

    .line 637
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getFocusField$stripe_release(IIZZ)Lcom/stripe/android/view/CardInputWidget$Field;

    move-result-object p1

    return-object p1
.end method

.method private final getFrameStart()I
    .registers 3

    .line 388
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "context.resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_2d

    .line 390
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    goto :goto_33

    .line 392
    :cond_2d
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    :goto_33
    return v0
.end method

.method private final getFrameWidth()I
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->frameWidthSupplier:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getInvalidFields()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/android/view/CardValidCallback$Fields;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 96
    new-array v0, v0, [Lcom/stripe/android/view/CardValidCallback$Fields;

    .line 97
    sget-object v1, Lcom/stripe/android/view/CardValidCallback$Fields;->Number:Lcom/stripe/android/view/CardValidCallback$Fields;

    .line 98
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/CardNumberEditText;->getValidatedCardNumber$stripe_release()Lcom/stripe/android/cards/CardNumber$Validated;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v4

    :goto_12
    const/4 v5, 0x0

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    move-object v1, v5

    :goto_17
    aput-object v1, v0, v4

    .line 100
    sget-object v1, Lcom/stripe/android/view/CardValidCallback$Fields;->Expiry:Lcom/stripe/android/view/CardValidCallback$Fields;

    .line 101
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/ExpiryDateEditText;->getValidatedDate()Lcom/stripe/android/model/ExpirationDate$Validated;

    move-result-object v2

    if-nez v2, :cond_25

    move v2, v3

    goto :goto_26

    :cond_25
    move v2, v4

    :goto_26
    if-eqz v2, :cond_29

    goto :goto_2a

    :cond_29
    move-object v1, v5

    :goto_2a
    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 103
    sget-object v2, Lcom/stripe/android/view/CardValidCallback$Fields;->Cvc:Lcom/stripe/android/view/CardValidCallback$Fields;

    .line 104
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getCvc()Lcom/stripe/android/cards/Cvc$Validated;

    move-result-object v6

    if-nez v6, :cond_36

    goto :goto_37

    :cond_36
    move v3, v4

    :goto_37
    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v2, v5

    :goto_3b
    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 106
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private final getPeekCardText()Ljava/lang/String;
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->getPanLength$stripe_release()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_18

    const/16 v1, 0xf

    if-eq v0, v1, :cond_16

    const/16 v1, 0x13

    if-eq v0, v1, :cond_14

    const/4 v0, 0x4

    goto :goto_19

    :cond_14
    const/4 v0, 0x3

    goto :goto_19

    :cond_16
    const/4 v0, 0x5

    goto :goto_19

    :cond_18
    const/4 v0, 0x2

    :goto_19
    const-string v1, "0"

    .line 1052
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getPostalCodeValue()Ljava/lang/String;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 133
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/PostalCodeEditText;->getPostalCode$stripe_release()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public static synthetic getRequiredFields$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getShouldShowErrorIcon$stripe_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final initView(Landroid/util/AttributeSet;)V
    .registers 7

    if-eqz p1, :cond_5

    .line 704
    invoke-direct {p0, p1}, Lcom/stripe/android/view/CardInputWidget;->applyAttributes(Landroid/util/AttributeSet;)V

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v0, Landroid/view/View;

    .line 708
    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$2;

    invoke-direct {v1}, Lcom/stripe/android/view/CardInputWidget$initView$2;-><init>()V

    check-cast v1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 706
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    .line 723
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/CardNumberEditText;->getDefaultErrorColorInt()I

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v3}, Lcom/stripe/android/view/CardNumberEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    const-string v4, "cardNumberEditText.hintTextColors"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/stripe/android/view/CardBrandView;->setTintColorInt$stripe_release(I)V

    const/4 v2, 0x0

    .line 725
    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_7a

    .line 728
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 730
    sget-object v3, Lcom/stripe/android/R$styleable;->CardInputView:[I

    const/4 v4, 0x0

    .line 728
    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v2, "context.theme.obtainStyl\u2026          0\n            )"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    :try_start_4e
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    .line 737
    sget v3, Lcom/stripe/android/R$styleable;->CardInputView_cardTint:I

    .line 738
    iget-object v4, p0, Lcom/stripe/android/view/CardInputWidget;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    invoke-virtual {v4}, Lcom/stripe/android/view/CardBrandView;->getTintColorInt$stripe_release()I

    move-result v4

    .line 736
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/stripe/android/view/CardBrandView;->setTintColorInt$stripe_release(I)V

    .line 740
    sget v2, Lcom/stripe/android/R$styleable;->CardInputView_cardTextErrorColor:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 741
    sget v2, Lcom/stripe/android/R$styleable;->CardInputView_cardHintText:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 742
    sget v3, Lcom/stripe/android/R$styleable;->CardInputView_android_focusedByDefault:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_71
    .catchall {:try_start_4e .. :try_end_71} :catchall_75

    .line 744
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7a

    :catchall_75
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_7a
    :goto_7a
    if-eqz v2, :cond_83

    .line 751
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Lcom/stripe/android/view/CardNumberEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 754
    :cond_83
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCurrentFields$stripe_release()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1301
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    .line 754
    invoke-virtual {v2, v1}, Lcom/stripe/android/view/StripeEditText;->setErrorColor(I)V

    goto :goto_8d

    .line 756
    :cond_9d
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$5;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$5;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CardNumberEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 763
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$6;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$6;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/ExpiryDateEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 770
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    new-instance v1, Lcom/stripe/android/view/BackUpFieldDeleteListener;

    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/BackUpFieldDeleteListener;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/ExpiryDateEditText;->setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    .line 771
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    new-instance v1, Lcom/stripe/android/view/BackUpFieldDeleteListener;

    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/BackUpFieldDeleteListener;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CvcEditText;->setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    .line 772
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    new-instance v1, Lcom/stripe/android/view/BackUpFieldDeleteListener;

    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    invoke-direct {v1, v2}, Lcom/stripe/android/view/BackUpFieldDeleteListener;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/PostalCodeEditText;->setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    .line 774
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$7;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$7;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CvcEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 783
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$8;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$8;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CvcEditText;->setAfterTextChangedListener(Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;)V

    .line 789
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$9;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$9;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CardNumberEditText;->setCompletionCallback$stripe_release(Lkotlin/jvm/functions/Function0;)V

    .line 794
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$10;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$10;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CardNumberEditText;->setBrandChangeCallback$stripe_release(Lkotlin/jvm/functions/Function1;)V

    .line 800
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$11;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$11;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/ExpiryDateEditText;->setCompletionCallback$stripe_release(Lkotlin/jvm/functions/Function0;)V

    .line 805
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    new-instance v1, Lcom/stripe/android/view/CardInputWidget$initView$12;

    invoke-direct {v1, p0}, Lcom/stripe/android/view/CardInputWidget$initView$12;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/CvcEditText;->setCompletionCallback$stripe_release(Lkotlin/jvm/functions/Function0;)V

    .line 811
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->allFields:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 1303
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_135
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    .line 812
    check-cast v1, Landroid/widget/TextView;

    .line 1314
    new-instance v2, Lcom/stripe/android/view/CardInputWidget$initView$$inlined$forEach$lambda$1;

    invoke-direct {v2, p0}, Lcom/stripe/android/view/CardInputWidget$initView$$inlined$forEach$lambda$1;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    .line 1315
    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_135

    :cond_14e
    if-eqz v0, :cond_155

    .line 818
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardNumberEditText;->requestFocus()Z

    .line 821
    :cond_155
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    new-instance v0, Lcom/stripe/android/view/CardInputWidget$initView$14;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/CardInputWidget$initView$14;-><init>(Lcom/stripe/android/view/CardInputWidget;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/CardNumberEditText;->setLoadingCallback$stripe_release(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final scrollEnd()V
    .registers 11

    .line 933
    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    if-eqz v0, :cond_91

    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->isViewInitialized:Z

    if-nez v0, :cond_a

    goto/16 :goto_91

    .line 937
    :cond_a
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    .line 939
    invoke-static/range {v2 .. v7}, Lcom/stripe/android/view/CardInputWidget;->updateSpaceSizes$stripe_release$default(Lcom/stripe/android/view/CardInputWidget;ZIIILjava/lang/Object;)V

    .line 941
    new-instance v2, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;

    .line 942
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v3, Landroid/view/View;

    .line 943
    iget-object v4, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getHiddenCardWidth$stripe_release()I

    move-result v4

    .line 944
    iget-object v5, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    check-cast v5, Landroid/view/View;

    .line 941
    invoke-direct {v2, v3, v4, v5}, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideEndAnimation;-><init>(Landroid/view/View;ILandroid/view/View;)V

    .line 947
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result v3

    .line 948
    new-instance v5, Lcom/stripe/android/view/CardInputWidget$ExpiryDateSlideEndAnimation;

    .line 949
    iget-object v6, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v6, Landroid/view/View;

    .line 948
    invoke-direct {v5, v6, v0, v3}, Lcom/stripe/android/view/CardInputWidget$ExpiryDateSlideEndAnimation;-><init>(Landroid/view/View;II)V

    .line 954
    iget-object v6, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v6, v4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcStartMargin$stripe_release(Z)I

    move-result v6

    sub-int/2addr v0, v3

    add-int/2addr v0, v6

    .line 956
    new-instance v3, Lcom/stripe/android/view/CardInputWidget$CvcSlideEndAnimation;

    .line 957
    iget-object v7, p0, Lcom/stripe/android/view/CardInputWidget;->cvcNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v7, Landroid/view/View;

    .line 960
    iget-object v8, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v8}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcWidth$stripe_release()I

    move-result v8

    .line 956
    invoke-direct {v3, v7, v0, v6, v8}, Lcom/stripe/android/view/CardInputWidget$CvcSlideEndAnimation;-><init>(Landroid/view/View;III)V

    .line 963
    iget-object v7, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v7, v4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeStartMargin$stripe_release(Z)I

    move-result v7

    sub-int/2addr v0, v6

    add-int/2addr v0, v7

    .line 965
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 966
    new-instance v6, Lcom/stripe/android/view/CardInputWidget$PostalCodeSlideEndAnimation;

    .line 967
    iget-object v8, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v8, Landroid/view/View;

    .line 970
    iget-object v9, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v9}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeWidth$stripe_release()I

    move-result v9

    .line 966
    invoke-direct {v6, v8, v0, v7, v9}, Lcom/stripe/android/view/CardInputWidget$PostalCodeSlideEndAnimation;-><init>(Landroid/view/View;III)V

    goto :goto_73

    :cond_72
    const/4 v6, 0x0

    :goto_73
    const/4 v0, 0x4

    .line 977
    new-array v0, v0, [Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    .line 978
    check-cast v2, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v2, v0, v4

    .line 979
    check-cast v5, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v5, v0, v1

    const/4 v1, 0x2

    .line 980
    check-cast v3, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 981
    check-cast v6, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v6, v0, v1

    .line 977
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 976
    invoke-direct {p0, v0}, Lcom/stripe/android/view/CardInputWidget;->startSlideAnimation(Ljava/util/List;)V

    .line 985
    iput-boolean v4, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    :cond_91
    :goto_91
    return-void
.end method

.method private final scrollStart()V
    .registers 11

    .line 878
    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    if-nez v0, :cond_87

    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->isViewInitialized:Z

    if-nez v0, :cond_a

    goto/16 :goto_87

    .line 882
    :cond_a
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result v0

    .line 883
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v2, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcStartMargin$stripe_release(Z)I

    move-result v2

    .line 884
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v3, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeStartMargin$stripe_release(Z)I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    .line 886
    invoke-static/range {v4 .. v9}, Lcom/stripe/android/view/CardInputWidget;->updateSpaceSizes$stripe_release$default(Lcom/stripe/android/view/CardInputWidget;ZIIILjava/lang/Object;)V

    .line 888
    new-instance v4, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideStartAnimation;

    .line 889
    iget-object v5, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v5, Landroid/view/View;

    .line 888
    invoke-direct {v4, v5}, Lcom/stripe/android/view/CardInputWidget$CardNumberSlideStartAnimation;-><init>(Landroid/view/View;)V

    .line 892
    iget-object v5, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result v5

    .line 893
    new-instance v7, Lcom/stripe/android/view/CardInputWidget$ExpiryDateSlideStartAnimation;

    .line 894
    iget-object v8, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v8, Landroid/view/View;

    .line 893
    invoke-direct {v7, v8, v0, v5}, Lcom/stripe/android/view/CardInputWidget$ExpiryDateSlideStartAnimation;-><init>(Landroid/view/View;II)V

    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    .line 900
    new-instance v0, Lcom/stripe/android/view/CardInputWidget$CvcSlideStartAnimation;

    .line 901
    iget-object v8, p0, Lcom/stripe/android/view/CardInputWidget;->cvcNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v8, Landroid/view/View;

    .line 904
    iget-object v9, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v9}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcWidth$stripe_release()I

    move-result v9

    .line 900
    invoke-direct {v0, v8, v2, v5, v9}, Lcom/stripe/android/view/CardInputWidget$CvcSlideStartAnimation;-><init>(Landroid/view/View;III)V

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    .line 908
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 909
    new-instance v2, Lcom/stripe/android/view/CardInputWidget$PostalCodeSlideStartAnimation;

    .line 910
    iget-object v8, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v8, Landroid/view/View;

    .line 913
    iget-object v9, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v9}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeWidth$stripe_release()I

    move-result v9

    .line 909
    invoke-direct {v2, v8, v3, v5, v9}, Lcom/stripe/android/view/CardInputWidget$PostalCodeSlideStartAnimation;-><init>(Landroid/view/View;III)V

    goto :goto_69

    :cond_68
    const/4 v2, 0x0

    :goto_69
    const/4 v3, 0x4

    .line 920
    new-array v3, v3, [Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    .line 921
    check-cast v4, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v4, v3, v1

    .line 922
    check-cast v7, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v7, v3, v6

    const/4 v1, 0x2

    .line 923
    check-cast v0, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v0, v3, v1

    const/4 v0, 0x3

    .line 924
    check-cast v2, Lcom/stripe/android/view/CardInputWidget$CardFieldAnimation;

    aput-object v2, v3, v0

    .line 920
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 919
    invoke-direct {p0, v0}, Lcom/stripe/android/view/CardInputWidget;->startSlideAnimation(Ljava/util/List;)V

    .line 928
    iput-boolean v6, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    :cond_87
    :goto_87
    return-void
.end method

.method private final setShouldShowErrorIcon(Z)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CardBrandView;->setShouldShowErrorIcon(Z)V

    .line 113
    iput-boolean p1, p0, Lcom/stripe/android/view/CardInputWidget;->shouldShowErrorIcon:Z

    return-void
.end method

.method private final startSlideAnimation(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/animation/Animation;",
            ">;)V"
        }
    .end annotation

    .line 989
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 990
    check-cast p1, Ljava/lang/Iterable;

    .line 1319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 990
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    .line 992
    :cond_1c
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->containerLayout:Landroid/widget/FrameLayout;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final updateFieldLayout(Landroid/view/View;II)V
    .registers 5

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_15

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 694
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 695
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 696
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 693
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic updateSpaceSizes$stripe_release$default(Lcom/stripe/android/view/CardInputWidget;ZIIILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_8

    .line 647
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getFrameWidth()I

    move-result p2

    :cond_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    .line 648
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getFrameStart()I

    move-result p3

    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/view/CardInputWidget;->updateSpaceSizes$stripe_release(ZII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 499
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCurrentFields$stripe_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1291
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2c

    .line 1292
    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    .line 499
    invoke-virtual {v1}, Lcom/stripe/android/view/StripeEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :cond_2c
    :goto_2c
    if-nez v2, :cond_34

    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 500
    :cond_34
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->requestFocus()Z

    .line 503
    :cond_39
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCurrentFields$stripe_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1294
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    const-string v2, ""

    .line 503
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/stripe/android/view/StripeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    :cond_57
    return-void
.end method

.method public final createHiddenCardText$stripe_release(I)Ljava/lang/String;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 841
    new-instance v0, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    const-string v1, "0"

    .line 842
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-direct {v0, v1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getFormatted(I)Ljava/lang/String;

    move-result-object p1

    .line 846
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 845
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCard()Lcom/stripe/android/model/Card;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCardBuilder()Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/stripe/android/model/Card$Builder;->build()Lcom/stripe/android/model/Card;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final getCardBrandView$stripe_release()Lcom/stripe/android/view/CardBrandView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardBrandView:Lcom/stripe/android/view/CardBrandView;

    return-object v0
.end method

.method public getCardBuilder()Lcom/stripe/android/model/Card$Builder;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->getValidatedCardNumber$stripe_release()Lcom/stripe/android/cards/CardNumber$Validated;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/ExpiryDateEditText;->getValidatedDate()Lcom/stripe/android/model/ExpirationDate$Validated;

    move-result-object v1

    .line 283
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getCvc()Lcom/stripe/android/cards/Cvc$Validated;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_18

    move v6, v4

    goto :goto_19

    :cond_18
    move v6, v5

    :goto_19
    invoke-virtual {v3, v6}, Lcom/stripe/android/view/CardNumberEditText;->setShouldShowError(Z)V

    .line 286
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    if-nez v1, :cond_22

    move v6, v4

    goto :goto_23

    :cond_22
    move v6, v5

    :goto_23
    invoke-virtual {v3, v6}, Lcom/stripe/android/view/ExpiryDateEditText;->setShouldShowError(Z)V

    .line 287
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    if-nez v2, :cond_2c

    move v6, v4

    goto :goto_2d

    :cond_2c
    move v6, v5

    :goto_2d
    invoke-virtual {v3, v6}, Lcom/stripe/android/view/CvcEditText;->setShouldShowError(Z)V

    .line 290
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    iget-boolean v6, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeRequired:Z

    if-nez v6, :cond_3c

    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getUsZipCodeRequired()Z

    move-result v6

    if-eqz v6, :cond_54

    :cond_3c
    iget-object v6, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v6}, Lcom/stripe/android/view/PostalCodeEditText;->getPostalCode$stripe_release()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_4f

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_4f

    :cond_4d
    move v6, v5

    goto :goto_50

    :cond_4f
    :goto_4f
    move v6, v4

    :goto_50
    if-eqz v6, :cond_54

    move v6, v4

    goto :goto_55

    :cond_54
    move v6, v5

    :goto_55
    invoke-virtual {v3, v6}, Lcom/stripe/android/view/PostalCodeEditText;->setShouldShowError(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCurrentFields$stripe_release()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1282
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 1283
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_69
    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/stripe/android/view/StripeEditText;

    .line 294
    invoke-virtual {v8}, Lcom/stripe/android/view/StripeEditText;->getShouldShowError()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 1284
    :cond_80
    check-cast v6, Ljava/util/List;

    .line 1282
    check-cast v6, Ljava/lang/Iterable;

    .line 1285
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_88
    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/android/view/StripeEditText;

    .line 296
    invoke-virtual {v6}, Lcom/stripe/android/view/StripeEditText;->getErrorMessage$stripe_release()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_88

    .line 297
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/stripe/android/view/StripeEditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_88

    :cond_a0
    if-nez v0, :cond_a8

    .line 303
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardNumberEditText;->requestFocus()Z

    goto :goto_c5

    :cond_a8
    if-nez v1, :cond_b0

    .line 306
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/ExpiryDateEditText;->requestFocus()Z

    goto :goto_c5

    :cond_b0
    if-nez v2, :cond_b8

    .line 309
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/CvcEditText;->requestFocus()Z

    goto :goto_c5

    .line 311
    :cond_b8
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v3}, Lcom/stripe/android/view/PostalCodeEditText;->getShouldShowError()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 312
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/stripe/android/view/PostalCodeEditText;->requestFocus()Z

    .line 327
    :goto_c5
    invoke-direct {p0, v4}, Lcom/stripe/android/view/CardInputWidget;->setShouldShowErrorIcon(Z)V

    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_ca
    invoke-direct {p0, v5}, Lcom/stripe/android/view/CardInputWidget;->setShouldShowErrorIcon(Z)V

    .line 316
    new-instance v3, Lcom/stripe/android/model/Card$Builder;

    .line 317
    invoke-virtual {v0}, Lcom/stripe/android/cards/CardNumber$Validated;->getValue$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {v1}, Lcom/stripe/android/model/ExpirationDate$Validated;->getMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 319
    invoke-virtual {v1}, Lcom/stripe/android/model/ExpirationDate$Validated;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 320
    invoke-virtual {v2}, Lcom/stripe/android/cards/Cvc$Validated;->getValue$stripe_release()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-direct {v3, v0, v4, v1, v2}, Lcom/stripe/android/model/Card$Builder;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/stripe/android/model/Card$Builder;->addressZip(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    const-string v1, "CardInputView"

    .line 323
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/model/Card$Builder;->loggingTokens(Ljava/util/Set;)Lcom/stripe/android/model/Card$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCardNumberEditText$stripe_release()Lcom/stripe/android/view/CardNumberEditText;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    return-object v0
.end method

.method public getCardParams()Lcom/stripe/android/model/CardParams;
    .registers 21
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 221
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/CardNumberEditText;->getValidatedCardNumber$stripe_release()Lcom/stripe/android/cards/CardNumber$Validated;

    move-result-object v1

    .line 222
    iget-object v2, v0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v2}, Lcom/stripe/android/view/ExpiryDateEditText;->getValidatedDate()Lcom/stripe/android/model/ExpirationDate$Validated;

    move-result-object v2

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/stripe/android/view/CardInputWidget;->getCvc()Lcom/stripe/android/cards/Cvc$Validated;

    move-result-object v3

    .line 225
    iget-object v4, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_1a

    move v7, v5

    goto :goto_1b

    :cond_1a
    move v7, v6

    :goto_1b
    invoke-virtual {v4, v7}, Lcom/stripe/android/view/CardNumberEditText;->setShouldShowError(Z)V

    .line 226
    iget-object v4, v0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    if-nez v2, :cond_24

    move v7, v5

    goto :goto_25

    :cond_24
    move v7, v6

    :goto_25
    invoke-virtual {v4, v7}, Lcom/stripe/android/view/ExpiryDateEditText;->setShouldShowError(Z)V

    .line 227
    iget-object v4, v0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    if-nez v3, :cond_2e

    move v7, v5

    goto :goto_2f

    :cond_2e
    move v7, v6

    :goto_2f
    invoke-virtual {v4, v7}, Lcom/stripe/android/view/CvcEditText;->setShouldShowError(Z)V

    .line 230
    iget-object v4, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    iget-boolean v7, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeRequired:Z

    if-nez v7, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/view/CardInputWidget;->getUsZipCodeRequired()Z

    move-result v7

    if-eqz v7, :cond_56

    :cond_3e
    iget-object v7, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v7}, Lcom/stripe/android/view/PostalCodeEditText;->getPostalCode$stripe_release()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_51

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4f

    goto :goto_51

    :cond_4f
    move v7, v6

    goto :goto_52

    :cond_51
    :goto_51
    move v7, v5

    :goto_52
    if-eqz v7, :cond_56

    move v7, v5

    goto :goto_57

    :cond_56
    move v7, v6

    :goto_57
    invoke-virtual {v4, v7}, Lcom/stripe/android/view/PostalCodeEditText;->setShouldShowError(Z)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/android/view/CardInputWidget;->getCurrentFields$stripe_release()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1277
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 1278
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/stripe/android/view/StripeEditText;

    .line 234
    invoke-virtual {v9}, Lcom/stripe/android/view/StripeEditText;->getShouldShowError()Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 1279
    :cond_82
    check-cast v7, Ljava/util/List;

    .line 1277
    check-cast v7, Ljava/lang/Iterable;

    .line 1280
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8a
    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/android/view/StripeEditText;

    .line 236
    invoke-virtual {v7}, Lcom/stripe/android/view/StripeEditText;->getErrorMessage$stripe_release()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8a

    .line 237
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/stripe/android/view/StripeEditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_8a

    :cond_a2
    const/4 v4, 0x0

    if-nez v1, :cond_ab

    .line 243
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/CardNumberEditText;->requestFocus()Z

    goto :goto_c8

    :cond_ab
    if-nez v2, :cond_b3

    .line 246
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/ExpiryDateEditText;->requestFocus()Z

    goto :goto_c8

    :cond_b3
    if-nez v3, :cond_bb

    .line 249
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/CvcEditText;->requestFocus()Z

    goto :goto_c8

    .line 251
    :cond_bb
    iget-object v7, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v7}, Lcom/stripe/android/view/PostalCodeEditText;->getShouldShowError()Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 252
    iget-object v1, v0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v1}, Lcom/stripe/android/view/PostalCodeEditText;->requestFocus()Z

    .line 269
    :goto_c8
    invoke-direct {v0, v5}, Lcom/stripe/android/view/CardInputWidget;->setShouldShowErrorIcon(Z)V

    return-object v4

    .line 255
    :cond_cc
    invoke-direct {v0, v6}, Lcom/stripe/android/view/CardInputWidget;->setShouldShowErrorIcon(Z)V

    const-string v7, "CardInputView"

    .line 257
    invoke-static {v7}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 258
    invoke-virtual {v1}, Lcom/stripe/android/cards/CardNumber$Validated;->getValue$stripe_release()Ljava/lang/String;

    move-result-object v10

    .line 259
    invoke-virtual {v2}, Lcom/stripe/android/model/ExpirationDate$Validated;->getMonth()I

    move-result v11

    .line 260
    invoke-virtual {v2}, Lcom/stripe/android/model/ExpirationDate$Validated;->getYear()I

    move-result v12

    .line 261
    invoke-virtual {v3}, Lcom/stripe/android/cards/Cvc$Validated;->getValue$stripe_release()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 262
    new-instance v1, Lcom/stripe/android/model/Address$Builder;

    invoke-direct {v1}, Lcom/stripe/android/model/Address$Builder;-><init>()V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeValue()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_fc

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fb

    goto :goto_fc

    :cond_fb
    move v5, v6

    :cond_fc
    :goto_fc
    if-nez v5, :cond_ff

    goto :goto_100

    :cond_ff
    move-object v2, v4

    :goto_100
    invoke-virtual {v1, v2}, Lcom/stripe/android/model/Address$Builder;->setPostalCode(Ljava/lang/String;)Lcom/stripe/android/model/Address$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/stripe/android/model/Address$Builder;->build()Lcom/stripe/android/model/Address;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1a0

    const/16 v19, 0x0

    .line 256
    new-instance v1, Lcom/stripe/android/model/CardParams;

    move-object v8, v1

    invoke-direct/range {v8 .. v19}, Lcom/stripe/android/model/CardParams;-><init>(Ljava/util/Set;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/Address;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic getCurrentFields$stripe_release()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/StripeEditText;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    .line 162
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 163
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCvcEditText$stripe_release()Lcom/stripe/android/view/CvcEditText;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    return-object v0
.end method

.method public final getExpiryDateEditText$stripe_release()Lcom/stripe/android/view/ExpiryDateEditText;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    return-object v0
.end method

.method public final getFrameWidthSupplier$stripe_release()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->frameWidthSupplier:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getLayoutWidthCalculator$stripe_release()Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->layoutWidthCalculator:Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;

    return-object v0
.end method

.method public getPaymentMethodCard()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;
    .registers 12
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCardParams()Lcom/stripe/android/model/CardParams;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 173
    new-instance v10, Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    .line 174
    invoke-virtual {v0}, Lcom/stripe/android/model/CardParams;->getNumber$stripe_release()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/stripe/android/model/CardParams;->getCvc$stripe_release()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v0}, Lcom/stripe/android/model/CardParams;->getExpMonth$stripe_release()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    invoke-virtual {v0}, Lcom/stripe/android/model/CardParams;->getExpYear$stripe_release()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    .line 178
    invoke-virtual {v0}, Lcom/stripe/android/model/CardParams;->getAttribution$stripe_release()Ljava/util/Set;

    move-result-object v7

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, v10

    .line 173
    invoke-direct/range {v1 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2e

    :cond_2d
    const/4 v10, 0x0

    :goto_2e
    return-object v10
.end method

.method public getPaymentMethodCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;
    .registers 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPaymentMethodCard()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 201
    sget-object v0, Lcom/stripe/android/model/PaymentMethodCreateParams;->Companion:Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getBillingDetails()Lcom/stripe/android/model/PaymentMethod$BillingDetails;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;->create$default(Lcom/stripe/android/model/PaymentMethodCreateParams$Companion;Lcom/stripe/android/model/PaymentMethodCreateParams$Card;Lcom/stripe/android/model/PaymentMethod$BillingDetails;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public final getPlacement$stripe_release()Lcom/stripe/android/view/CardInputWidgetPlacement;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    return-object v0
.end method

.method public final getPostalCodeEditText$stripe_release()Lcom/stripe/android/view/PostalCodeEditText;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    return-object v0
.end method

.method public final getPostalCodeEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEnabled$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/CardInputWidget;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPostalCodeRequired()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeRequired:Z

    return v0
.end method

.method public final getPostalCodeTextInputLayout$stripe_release()Lcom/google/android/material/textfield/TextInputLayout;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final getRequiredFields$stripe_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/view/StripeEditText;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    return-object v0
.end method

.method public final getShouldShowErrorIcon$stripe_release()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->shouldShowErrorIcon:Z

    return v0
.end method

.method public final getUsZipCodeRequired()Z
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->usZipCodeRequired$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/CardInputWidget;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1298
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2a

    .line 1299
    :cond_13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    .line 551
    invoke-virtual {v1}, Lcom/stripe/android/view/StripeEditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v2, 0x0

    :cond_2a
    :goto_2a
    return v2
.end method

.method public final isShowingFullCard$stripe_release()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 419
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 420
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    sget-object v1, Lcom/stripe/android/view/PostalCodeEditText$Config;->Global:Lcom/stripe/android/view/PostalCodeEditText$Config;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/PostalCodeEditText;->setConfig$stripe_release(Lcom/stripe/android/view/PostalCodeEditText$Config;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_10

    .line 556
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 560
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 561
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getFrameStart()I

    move-result v1

    .line 559
    invoke-direct {p0, v0, v1}, Lcom/stripe/android/view/CardInputWidget;->getFocusField(II)Lcom/stripe/android/view/CardInputWidget$Field;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_50

    .line 563
    sget-object p1, Lcom/stripe/android/view/CardInputWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/android/view/CardInputWidget$Field;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_48

    const/4 v0, 0x2

    if-eq p1, v0, :cond_43

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3e

    const/4 v0, 0x4

    if-ne p1, v0, :cond_38

    .line 567
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    check-cast p1, Lcom/stripe/android/view/StripeEditText;

    goto :goto_4c

    :cond_38
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 566
    :cond_3e
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    check-cast p1, Lcom/stripe/android/view/StripeEditText;

    goto :goto_4c

    .line 565
    :cond_43
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    check-cast p1, Lcom/stripe/android/view/StripeEditText;

    goto :goto_4c

    .line 564
    :cond_48
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast p1, Lcom/stripe/android/view/StripeEditText;

    .line 568
    :goto_4c
    invoke-virtual {p1}, Lcom/stripe/android/view/StripeEditText;->requestFocus()Z

    goto :goto_54

    .line 570
    :cond_50
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_54
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 996
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 997
    iget-boolean p1, p0, Lcom/stripe/android/view/CardInputWidget;->isViewInitialized:Z

    if-nez p1, :cond_7d

    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getWidth()I

    move-result p1

    if-eqz p1, :cond_7d

    const/4 p1, 0x1

    .line 998
    iput-boolean p1, p0, Lcom/stripe/android/view/CardInputWidget;->isViewInitialized:Z

    .line 999
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getFrameWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setTotalLengthInPixels$stripe_release(I)V

    .line 1001
    iget-boolean v1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/stripe/android/view/CardInputWidget;->updateSpaceSizes$stripe_release$default(Lcom/stripe/android/view/CardInputWidget;ZIIILjava/lang/Object;)V

    .line 1004
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast p1, Landroid/view/View;

    .line 1005
    iget-object p2, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {p2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCardWidth$stripe_release()I

    move-result p2

    .line 1006
    iget-boolean p3, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    if-eqz p3, :cond_33

    const/4 p3, 0x0

    goto :goto_3b

    .line 1009
    :cond_33
    iget-object p3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {p3}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getHiddenCardWidth$stripe_release()I

    move-result p3

    mul-int/lit8 p3, p3, -0x1

    .line 1003
    :goto_3b
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    .line 1014
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast p1, Landroid/view/View;

    .line 1015
    iget-object p2, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {p2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateWidth$stripe_release()I

    move-result p2

    .line 1016
    iget-object p3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    iget-boolean p4, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    invoke-virtual {p3, p4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result p3

    .line 1013
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    .line 1020
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cvcNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast p1, Landroid/view/View;

    .line 1021
    iget-object p2, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {p2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcWidth$stripe_release()I

    move-result p2

    .line 1022
    iget-object p3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    iget-boolean p4, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    invoke-virtual {p3, p4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcStartMargin$stripe_release(Z)I

    move-result p3

    .line 1019
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    .line 1026
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast p1, Landroid/view/View;

    .line 1027
    iget-object p2, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {p2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeWidth$stripe_release()I

    move-result p2

    .line 1028
    iget-object p3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    iget-boolean p4, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    invoke-virtual {p3, p4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeStartMargin$stripe_release(Z)I

    move-result p3

    .line 1025
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    :cond_7d
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 11
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_b0

    .line 583
    check-cast p1, Landroid/os/Bundle;

    const/4 v0, 0x1

    const-string v1, "state_postal_code_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/stripe/android/view/CardInputWidget;->setPostalCodeEnabled(Z)V

    const-string v1, "state_card_viewed"

    .line 584
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    .line 585
    iget-boolean v3, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/stripe/android/view/CardInputWidget;->updateSpaceSizes$stripe_release$default(Lcom/stripe/android/view/CardInputWidget;ZIIILjava/lang/Object;)V

    .line 586
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getFrameWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setTotalLengthInPixels$stripe_release(I)V

    .line 591
    iget-boolean v1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    .line 593
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v1, v0}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result v1

    .line 594
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v3, v0}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcStartMargin$stripe_release(Z)I

    move-result v3

    .line 595
    iget-object v4, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v4, v0}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeStartMargin$stripe_release(Z)I

    move-result v0

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_72

    .line 597
    :cond_4b
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getHiddenCardWidth$stripe_release()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 598
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v1, v2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateStartMargin$stripe_release(Z)I

    move-result v1

    .line 599
    iget-object v3, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v3, v2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcStartMargin$stripe_release(Z)I

    move-result v3

    .line 600
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 601
    iget-object v4, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v4, v2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeStartMargin$stripe_release(Z)I

    move-result v2

    goto :goto_72

    .line 603
    :cond_6c
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getTotalLengthInPixels$stripe_release()I

    move-result v2

    .line 608
    :goto_72
    iget-object v4, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v4, Landroid/view/View;

    .line 609
    iget-object v5, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v5}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCardWidth$stripe_release()I

    move-result v5

    .line 607
    invoke-direct {p0, v4, v5, v0}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    .line 613
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v0, Landroid/view/View;

    .line 614
    iget-object v4, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v4}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getDateWidth$stripe_release()I

    move-result v4

    .line 612
    invoke-direct {p0, v0, v4, v1}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    .line 618
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cvcNumberTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v0, Landroid/view/View;

    .line 619
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getCvcWidth$stripe_release()I

    move-result v1

    .line 617
    invoke-direct {p0, v0, v1, v3}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    .line 623
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    check-cast v0, Landroid/view/View;

    .line 624
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->getPostalCodeWidth$stripe_release()I

    move-result v1

    .line 622
    invoke-direct {p0, v0, v1, v2}, Lcom/stripe/android/view/CardInputWidget;->updateFieldLayout(Landroid/view/View;II)V

    const-string v0, "state_super_state"

    .line 628
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_b3

    .line 630
    :cond_b0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_b3
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    .line 574
    new-array v0, v0, [Lkotlin/Pair;

    .line 575
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "state_super_state"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 576
    iget-boolean v1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "state_card_viewed"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 577
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "state_postal_code_enabled"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 574
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public setCardHint(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cardHint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CardNumberEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCardInputListener(Lcom/stripe/android/view/CardInputListener;)V
    .registers 2
    .param p1    # Lcom/stripe/android/view/CardInputListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 442
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardInputListener:Lcom/stripe/android/view/CardInputListener;

    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 451
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CardNumberEditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardNumberEditText;->isCardNumberValid()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    return-void
.end method

.method public setCardNumberTextWatcher(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 519
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CardNumberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setCardValidCallback(Lcom/stripe/android/view/CardValidCallback;)V
    .registers 5
    .param p1    # Lcom/stripe/android/view/CardValidCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 424
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardValidCallback:Lcom/stripe/android/view/CardValidCallback;

    .line 425
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1287
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    .line 425
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardValidTextWatcher:Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/stripe/android/view/StripeEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_a

    :cond_1e
    if-eqz p1, :cond_3c

    .line 429
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->requiredFields:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 1289
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/StripeEditText;

    .line 429
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->cardValidTextWatcher:Lcom/stripe/android/view/CardInputWidget$cardValidTextWatcher$1;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/StripeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_28

    .line 433
    :cond_3c
    iget-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->cardValidCallback:Lcom/stripe/android/view/CardValidCallback;

    if-eqz p1, :cond_4f

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getInvalidFields()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getInvalidFields()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/stripe/android/view/CardValidCallback;->onInputChanged(ZLjava/util/Set;)V

    :cond_4f
    return-void
.end method

.method public setCvcCode(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 487
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CvcEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCvcNumberTextWatcher(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 533
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CvcEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 512
    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getCurrentFields$stripe_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1296
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    .line 512
    invoke-virtual {v1, p1}, Lcom/stripe/android/view/StripeEditText;->setEnabled(Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setExpiryDate(II)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x270fL
        .end annotation
    .end param

    .line 475
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    .line 476
    new-instance v1, Lcom/stripe/android/model/ExpirationDate$Unvalidated;

    invoke-direct {v1, p1, p2}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;-><init>(II)V

    invoke-virtual {v1}, Lcom/stripe/android/model/ExpirationDate$Unvalidated;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 475
    invoke-virtual {v0, p1}, Lcom/stripe/android/view/ExpiryDateEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpiryDateTextWatcher(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 526
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/ExpiryDateEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setFrameWidthSupplier$stripe_release(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->frameWidthSupplier:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setLayoutWidthCalculator$stripe_release(Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;)V
    .registers 3
    .param p1    # Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/stripe/android/view/CardInputWidget;->layoutWidthCalculator:Lcom/stripe/android/view/CardInputWidget$LayoutWidthCalculator;

    return-void
.end method

.method public final synthetic setPostalCode$stripe_release(Ljava/lang/String;)V
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/PostalCodeEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPostalCodeEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEnabled$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/CardInputWidget;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPostalCodeRequired(Z)V
    .registers 2

    .line 368
    iput-boolean p1, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeRequired:Z

    return-void
.end method

.method public setPostalCodeTextWatcher(Landroid/text/TextWatcher;)V
    .registers 3
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 540
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/PostalCodeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setShowingFullCard$stripe_release(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/stripe/android/view/CardInputWidget;->isShowingFullCard:Z

    return-void
.end method

.method public final setUsZipCodeRequired(Z)V
    .registers 5

    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->usZipCodeRequired$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/android/view/CardInputWidget;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSpaceSizes$stripe_release(ZII)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 657
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    const-string v2, "4242 4242 4242 4242 424"

    .line 655
    invoke-direct {p0, v2, v1}, Lcom/stripe/android/view/CardInputWidget;->getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setCardWidth$stripe_release(I)V

    .line 660
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 662
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->expiryDateEditText:Lcom/stripe/android/view/ExpiryDateEditText;

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    const-string v2, "MM/MM"

    .line 660
    invoke-direct {p0, v2, v1}, Lcom/stripe/android/view/CardInputWidget;->getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setDateWidth$stripe_release(I)V

    .line 665
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 666
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->hiddenCardText:Ljava/lang/String;

    .line 667
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    .line 665
    invoke-direct {p0, v1, v2}, Lcom/stripe/android/view/CardInputWidget;->getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setHiddenCardWidth$stripe_release(I)V

    .line 670
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 671
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getCvcPlaceHolder()Ljava/lang/String;

    move-result-object v1

    .line 672
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cvcEditText:Lcom/stripe/android/view/CvcEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    .line 670
    invoke-direct {p0, v1, v2}, Lcom/stripe/android/view/CardInputWidget;->getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setCvcWidth$stripe_release(I)V

    .line 675
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 677
    iget-object v1, p0, Lcom/stripe/android/view/CardInputWidget;->postalCodeEditText:Lcom/stripe/android/view/PostalCodeEditText;

    check-cast v1, Lcom/stripe/android/view/StripeEditText;

    const-string v2, "1234567890"

    .line 675
    invoke-direct {p0, v2, v1}, Lcom/stripe/android/view/CardInputWidget;->getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setPostalCodeWidth$stripe_release(I)V

    .line 680
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    .line 681
    invoke-direct {p0}, Lcom/stripe/android/view/CardInputWidget;->getPeekCardText()Ljava/lang/String;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lcom/stripe/android/view/CardInputWidget;->cardNumberEditText:Lcom/stripe/android/view/CardNumberEditText;

    check-cast v2, Lcom/stripe/android/view/StripeEditText;

    .line 680
    invoke-direct {p0, v1, v2}, Lcom/stripe/android/view/CardInputWidget;->getDesiredWidthInPixels(Ljava/lang/String;Lcom/stripe/android/view/StripeEditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardInputWidgetPlacement;->setPeekCardWidth$stripe_release(I)V

    .line 685
    iget-object v0, p0, Lcom/stripe/android/view/CardInputWidget;->placement:Lcom/stripe/android/view/CardInputWidgetPlacement;

    invoke-virtual {p0}, Lcom/stripe/android/view/CardInputWidget;->getPostalCodeEnabled()Z

    move-result v1

    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/stripe/android/view/CardInputWidgetPlacement;->updateSpacing$stripe_release(ZZII)V

    return-void
.end method
