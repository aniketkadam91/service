"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/page",{

/***/ "(app-pages-browser)/./app/page.js":
/*!*********************!*\
  !*** ./app/page.js ***!
  \*********************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": function() { return /* binding */ Home; }\n/* harmony export */ });\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! react */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/index.js\");\n/* harmony import */ var react__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(react__WEBPACK_IMPORTED_MODULE_1__);\n/* harmony import */ var react_redux__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! react-redux */ \"(app-pages-browser)/./node_modules/react-redux/dist/react-redux.mjs\");\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\nfunction Home() {\n    _s();\n    const isUserLoggedIn = (0,react_redux__WEBPACK_IMPORTED_MODULE_2__.useSelector)((state)=>state.login.isUserLoggedIn);\n    const [user, setUser] = (0,react__WEBPACK_IMPORTED_MODULE_1__.useState)(\"\");\n    (0,react__WEBPACK_IMPORTED_MODULE_1__.useEffect)(()=>{\n        if (!isUserLoggedIn) {\n            let userData = localStorage.getItem(\"token\");\n            const jsonObject = JSON.parse(userData);\n            console.log(jsonObject.user_display_name);\n            setUser(jsonObject.user_display_name);\n        }\n    }, []);\n    console.log(user);\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"main\", {\n        children: [\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"h1\", {\n                style: {\n                    color: \"white\",\n                    textAlign: \"center\"\n                },\n                children: \"Time to get started!\"\n            }, void 0, false, {\n                fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\page.js\",\n                lineNumber: 22,\n                columnNumber: 7\n            }, this),\n            /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(\"h2\", {}, void 0, false, {\n                fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\page.js\",\n                lineNumber: 25,\n                columnNumber: 7\n            }, this)\n        ]\n    }, void 0, true, {\n        fileName: \"C:\\\\xampp\\\\htdocs\\\\services\\\\nextapp\\\\app\\\\page.js\",\n        lineNumber: 21,\n        columnNumber: 5\n    }, this);\n}\n_s(Home, \"Laxl07zR0tIEB4lH+vnsNd8NWLE=\", false, function() {\n    return [\n        react_redux__WEBPACK_IMPORTED_MODULE_2__.useSelector\n    ];\n});\n_c = Home;\nvar _c;\n$RefreshReg$(_c, \"Home\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL2FwcC9wYWdlLmpzIiwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7QUFFNEM7QUFDRjtBQUUzQixTQUFTRzs7SUFDdEIsTUFBTUMsaUJBQWlCRix3REFBV0EsQ0FBQyxDQUFDRyxRQUFVQSxNQUFNQyxLQUFLLENBQUNGLGNBQWM7SUFDeEUsTUFBTSxDQUFDRyxNQUFNQyxRQUFRLEdBQUdQLCtDQUFRQSxDQUFDO0lBRWpDRCxnREFBU0EsQ0FBQztRQUNSLElBQUksQ0FBQ0ksZ0JBQWdCO1lBQ25CLElBQUlLLFdBQVdDLGFBQWFDLE9BQU8sQ0FBQztZQUNwQyxNQUFNQyxhQUFhQyxLQUFLQyxLQUFLLENBQUNMO1lBQzlCTSxRQUFRQyxHQUFHLENBQUNKLFdBQVdLLGlCQUFpQjtZQUV4Q1QsUUFBUUksV0FBV0ssaUJBQWlCO1FBQ3RDO0lBQ0YsR0FBRyxFQUFFO0lBQ0xGLFFBQVFDLEdBQUcsQ0FBQ1Q7SUFDWixxQkFDRSw4REFBQ1c7OzBCQUNDLDhEQUFDQztnQkFBR0MsT0FBTztvQkFBRUMsT0FBTztvQkFBU0MsV0FBVztnQkFBUzswQkFBRzs7Ozs7OzBCQUdwRCw4REFBQ0M7Ozs7Ozs7Ozs7O0FBT1A7R0ExQndCcEI7O1FBQ0NELG9EQUFXQTs7O0tBRFpDIiwic291cmNlcyI6WyJ3ZWJwYWNrOi8vX05fRS8uL2FwcC9wYWdlLmpzP2JlNjciXSwic291cmNlc0NvbnRlbnQiOlsiXCJ1c2UgY2xpZW50XCI7XG5cbmltcG9ydCB7IHVzZUVmZmVjdCwgdXNlU3RhdGUgfSBmcm9tIFwicmVhY3RcIjtcbmltcG9ydCB7IHVzZVNlbGVjdG9yIH0gZnJvbSBcInJlYWN0LXJlZHV4XCI7XG5cbmV4cG9ydCBkZWZhdWx0IGZ1bmN0aW9uIEhvbWUoKSB7XG4gIGNvbnN0IGlzVXNlckxvZ2dlZEluID0gdXNlU2VsZWN0b3IoKHN0YXRlKSA9PiBzdGF0ZS5sb2dpbi5pc1VzZXJMb2dnZWRJbik7XG4gIGNvbnN0IFt1c2VyLCBzZXRVc2VyXSA9IHVzZVN0YXRlKFwiXCIpO1xuXG4gIHVzZUVmZmVjdCgoKSA9PiB7XG4gICAgaWYgKCFpc1VzZXJMb2dnZWRJbikge1xuICAgICAgbGV0IHVzZXJEYXRhID0gbG9jYWxTdG9yYWdlLmdldEl0ZW0oXCJ0b2tlblwiKTtcbiAgICAgIGNvbnN0IGpzb25PYmplY3QgPSBKU09OLnBhcnNlKHVzZXJEYXRhKTtcbiAgICAgIGNvbnNvbGUubG9nKGpzb25PYmplY3QudXNlcl9kaXNwbGF5X25hbWUpO1xuXG4gICAgICBzZXRVc2VyKGpzb25PYmplY3QudXNlcl9kaXNwbGF5X25hbWUpO1xuICAgIH1cbiAgfSwgW10pO1xuICBjb25zb2xlLmxvZyh1c2VyKTtcbiAgcmV0dXJuIChcbiAgICA8bWFpbj5cbiAgICAgIDxoMSBzdHlsZT17eyBjb2xvcjogXCJ3aGl0ZVwiLCB0ZXh0QWxpZ246IFwiY2VudGVyXCIgfX0+XG4gICAgICAgIFRpbWUgdG8gZ2V0IHN0YXJ0ZWQhXG4gICAgICA8L2gxPlxuICAgICAgPGgyPlxuICAgICAgICB7XG4gICAgICAgICAgLy9pc1VzZXJMb2dnZWRJbiA/IGBIZXkgJHt9YCA6IGBgXG4gICAgICAgIH1cbiAgICAgIDwvaDI+XG4gICAgPC9tYWluPlxuICApO1xufVxuIl0sIm5hbWVzIjpbInVzZUVmZmVjdCIsInVzZVN0YXRlIiwidXNlU2VsZWN0b3IiLCJIb21lIiwiaXNVc2VyTG9nZ2VkSW4iLCJzdGF0ZSIsImxvZ2luIiwidXNlciIsInNldFVzZXIiLCJ1c2VyRGF0YSIsImxvY2FsU3RvcmFnZSIsImdldEl0ZW0iLCJqc29uT2JqZWN0IiwiSlNPTiIsInBhcnNlIiwiY29uc29sZSIsImxvZyIsInVzZXJfZGlzcGxheV9uYW1lIiwibWFpbiIsImgxIiwic3R5bGUiLCJjb2xvciIsInRleHRBbGlnbiIsImgyIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/page.js\n"));

/***/ })

});