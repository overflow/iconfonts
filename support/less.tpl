@<%= prefix %>-path: "<%= path %>";
@<%= prefix %>-name: "<%= name %>";
@<%= prefix %>-site: "<%= site %>";
@<%= prefix %>-basename: "<%= basename %>";
@<%= prefix %>-version: "<%= version %>";
@<%= prefix %>-svghash: "<%= svghash %>";
@<%= prefix %>-nativesize: "<%= nativesize %>";

<%= prefix %>-font() {
  @font-face {
    font-family: @<%= prefix %>-name;
    src: url(@<%= prefix %>-path + @<%= prefix %>-basename + '.eot?v=' + @<%= prefix %>-version);
    src: url(@<%= prefix %>-path + @<%= prefix %>-basename + '.eot?#iefix&v=' + @<%= prefix %>-version) format("embedded-opentype"), url(<%= prefix %>['path'] + <%= prefix %>['basename'] + ".woff?v=" + <%= prefix %>['version']) format("woff"), url(<%= prefix %>['path'] + <%= prefix %>['basename'] + ".ttf?v=" + <%= prefix %>-version) format("truetype"), url(@<%= prefix %>path + @<%= prefix %>-basename + ".svg?v=" + @<%= prefix %>-version + @<%= prefix %>-svghash) format("svg");
    font-weight: normal;
    font-style: normal;
  }
}

<%= prefix %>-icon(@type) {
  &:extend(.<%= prefix %>-icon all);
  @var: "@<%= prefix %>-icon-@{type}";
  content: @@var;
}

.<%= prefix %>-icon {
  line-height: 1em;
  font-family: <%= prefix %>['name'];
  font-weight: normal;
  font-style: normal;
  display: inline-block;
  text-decoration: none;
  vertical-align: middle;
  text-rendering: optimizeLegibility !important;
  -webkit-font-smoothing: antialiased !important;
  -moz-osx-font-smoothing: grayscale;
}

<% each(function (val, key) { %>
  @<%= prefix %>-icon-<%= key %>: "<%= val %>";<% }); %>