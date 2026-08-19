class FilterResult {
  final bool allowed;
  final String reason;
  FilterResult(this.allowed, this.reason);
}

class ShariahFilter {
  static final forbidden = ['خمر','موسيقى','رقص','تبرج','ربا','قمار','اختلاط محرم','ذات أرواح','تمثال','صنم'];
  static final livingKeywords = ['انسان','رجل','مرأة','وجه','طفل','حيوان','طير','كلب','قط'];

  static FilterResult check(String prompt) {
    final lower = prompt.toLowerCase();
    for (var w in forbidden) {
      if (lower.contains(w)) return FilterResult(false, 'ممنوع شرعاً: $w');
    }
    return FilterResult(true, 'مباح');
  }

  static String enhanceNoLiving(String prompt) {
    return '$prompt, بدون ذوات أرواح, طبيعة صامتة, هندسة إسلامية, لا وجوه, لا كائنات حية, حلال';
  }
}
